import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/presentation/components/onboarding/OnboardingContent.dart';
import 'package:ecommerce/presentation/components/onboarding/size_config.dart';
import 'package:ecommerce/presentation/const/constants.dart';

import 'package:flutter/material.dart';



class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late CarouselController _controller;
  CarouselController buttonCarouselController = CarouselController();
  @override
  void initState() {
    _controller =  CarouselController();
    super.initState();
  }
  int _currentPage = 0;
  bool laoding = true;
  AnimatedContainer _buildDots({int? index,}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      decoration:  BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(50),),
          border: Border.all(color: _currentPage == index ?  primaryColor : purpleColor ),
          color: _currentPage == index ?  primaryColor : purpleColor,
          gradient: _currentPage == index ?
          const LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              primaryColor,
              primaryColor,
              primaryColor,
            ],
          )
              :
          const LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              purpleColor,
              purpleColor,
              purpleColor,
            ],
          )
      ),
      margin: const EdgeInsets.only(right: 5),
      height: 10,
      curve: Curves.easeIn,
      width: _currentPage == index ? 20 : 10,
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    SizeConfig().init(context);
    double width = SizeConfig.screenW!;
    double height = SizeConfig.screenH!;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: whiteColor,
        elevation: 0,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding:  const EdgeInsets.only(top: 20),
            child: CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                animateToClosest: true,
                viewportFraction: 1,
                enlargeCenterPage: false,
                aspectRatio: 1,
                autoPlayInterval: const Duration(seconds: 5),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                scrollDirection: Axis.horizontal,
                onPageChanged: (index, reason) {
                  setState((){
                    _currentPage = index;
                  });
                },
              ),
              items: contents.map((item) => Container(
                    //height: size.height,
                    child:  Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0,left: 8.0),
                          child: Image.asset(item.image, height: size.height*0.35, width: size.width,fit: BoxFit.cover,),
                        ),
                        SizedBox(
                          height: (height >= 840) ? 10 : 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(
                            item.title,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color:  blackColor,
                              fontSize: (width <= 550) ? 18 : 18,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            item.desc,
                            style: TextStyle(
                              fontWeight: FontWeight.w300,color: Colors.black,
                              height: 1.2,
                              fontSize: width <= 321 ? 13 : 15,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                  )).toList(),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  contents.length,
                      (int index) => _buildDots(
                    index: index,
                  ),
                ),
              ),

            ],
          ),

        ],
      ),
      bottomSheet: Container(
        height: width*0.4,
        decoration: const BoxDecoration(
          color:whiteColor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 2.0),
                child: Container(

                  padding: (width <= 550)
                      ? const EdgeInsets.symmetric(
                      horizontal: 30, vertical: 14)
                      : const EdgeInsets.symmetric(
                      horizontal: 30, vertical: 16),
                  width:width,
                  decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(10),
                      gradient: const LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          purpleColor,
                          purpleColor,
                          purpleColor,
                        ],
                      )
                  ),
                  child: GestureDetector(
                    onTap: () {
                      //Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginScreen()));
                    },
                    child: const Text("Se connecter",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),textAlign: TextAlign.center,),
                  ),
                ),
              ),
              GestureDetector(
                onTap: ()=>{
                  //Navigator.push(context, MaterialPageRoute(builder: (context)=>const RegisterScreen()))
                },
                child: SizedBox(
                  width:width,
                  height:width*0.1,
                  child: const Center(
                    child: Text(
                      "Créer un compte",
                      style: TextStyle(color: purpleColor,fontSize: 16),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}