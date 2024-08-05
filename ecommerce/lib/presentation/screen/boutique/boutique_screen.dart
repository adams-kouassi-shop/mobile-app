import 'package:ecommerce/presentation/components/BottomNavigationBar/bottomNavigationBar.dart';
import 'package:ecommerce/presentation/const/constants.dart';
import 'package:ecommerce/presentation/screen/boutique/show_boutique_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BoutiqueScreen extends StatefulWidget {
  const BoutiqueScreen({super.key});

  @override
  State<BoutiqueScreen> createState() => _BoutiqueScreenState();
}

class _BoutiqueScreenState extends State<BoutiqueScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){Navigator.pop(context);},
          icon: Icon(Icons.chevron_left,color: whiteColor),
        ),
        title: Text('Details du produit',style: TextStyle(color: whiteColor),),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/Notification.svg", color: whiteColor),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // While loading use 👇
            // const Expanded(
            //   child: DiscoverCategoriesSkelton(),
            // ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(12),
                          child: Text('Liste de nos boutiques'.toUpperCase(),style: TextStyle(color: blackColor,fontWeight: FontWeight.bold),)
                      ),
                    ],
                  ),
                  Divider(color: greyColor,),
                  Padding(
                    padding: const EdgeInsets.only(top: 4.0,left: 8,right: 4),
                    child: Container(
                      height: 80,
                      padding: EdgeInsets.only(top: 4,bottom: 4),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: ListTile(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ShowBoutiqueScreen()));
                        },
                        leading: Padding(
                          padding: const EdgeInsets.only(top: 12.0,),
                          child: Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              image:DecorationImage(
                                image: AssetImage('assets/images/phone2.jpeg')
                              ),
                            ),
                          ),
                        ),// Image.asset("assets/images/image_boutique.jpg", height: 80, fit: BoxFit.cover,),
                        title: Text('Boutique ks'),
                        trailing: Icon(Icons.chevron_right),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: bottomNavigationBar(selectedIndex: 2,),
    );
  }
}
