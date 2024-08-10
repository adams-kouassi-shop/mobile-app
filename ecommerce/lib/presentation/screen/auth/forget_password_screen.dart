import 'package:ecommerce/presentation/const/constants.dart';
import 'package:ecommerce/presentation/screen/auth/login_screen.dart';
import 'package:flutter/material.dart';
class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  final TextEditingController _namehere = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: primaryColor,
        leading: IconButton(
          onPressed:()=>Navigator.pop(context),
          icon: Icon(Icons.chevron_left,color: whiteColor),
        ),
        title: Text('Mot de psse oublié'),
        centerTitle: true,
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
              top: -1,
              height: size.height*0.3,
              width: size.width*100,
              child: Container(
                color: primaryColor,
              )
          ),
          Positioned(
              height: size.height *0.65,
              width: size.width *0.95,
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  side: BorderSide(
                    color: Colors.grey.withOpacity(0.2),
                    width: 1,
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height:size.height *0.11,
                      width: size.width *0.50,
                      child: Image.asset('assets/images/welcome.png'), // remove image background
                    ),
                    const SizedBox(height: 20,),
                    SizedBox(
                      height:size.height *0.07,
                      width: size.width *0.65,
                      child: TextFormField(
                        controller: _namehere,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                            ),
                            labelText: 'Adresse Email',
                            hintText: "Adresse Email"
                        ),
                        keyboardType: TextInputType.emailAddress,
                        obscureText: false,
                      ),
                    ),

                    SizedBox(height: 40,),

                    InkWell(
                      child: Container(
                        height:size.height *0.08,
                        width: size.width *0.42,
                        decoration: const BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.only(
                              // bottomLeft: Radius.circular(22.0),
                                topLeft: Radius.circular(20.0),
                                bottomRight: Radius.circular(20.0)
                            )
                        ),
                        child: const Center(child: Text('Envoyer',style: TextStyle(fontSize: 20.0,color: Colors.white),)),
                      ),
                      onTap: (){

                      },
                    ),

                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                      },
                      child: Container(
                          margin: EdgeInsets.only(top: 45),
                          child: const Text('Creér un compte',style: TextStyle(color: Colors.grey),)
                      ),
                    )

                  ],
                ),
              )
          ),

        ],
      ),
    );
  }
}
