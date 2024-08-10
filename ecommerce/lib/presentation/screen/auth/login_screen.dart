import 'package:ecommerce/presentation/const/constants.dart';
import 'package:ecommerce/presentation/screen/auth/forget_password_screen.dart';
import 'package:ecommerce/presentation/screen/auth/register_screen.dart';
import 'package:ecommerce/presentation/screen/home_screen.dart';
import 'package:flutter/material.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isChecked = false;
  bool Check = true;
  bool burger = false;

  bool _secureText = true;
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
        title: Text('Page de connexion'),
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
                        keyboardType: TextInputType.number,
                        obscureText: false,
                      ),
                    ),

                    const SizedBox(height: 20,),

                    SizedBox(
                      height:size.height *0.07,
                      width: size.width *0.65,
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: const OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                            ),
                            labelText: 'Mot de passe',
                            hintText: "Mot de passe",
                            suffixIcon: IconButton(
                              onPressed: (){
                                setState(() {
                                  _secureText = !_secureText;
                                });
                              },
                              icon:  Icon(_secureText ?Icons.remove_red_eye: Icons.remove_red_eye_outlined),
                            )
                        ),
                        keyboardType: TextInputType.text,

                        obscureText: _secureText,
                      ),
                    ),

                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(left: 80),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> ForgetPasswordScreen()));
                            },
                            child: Container(
                              margin: EdgeInsets.only(top: 20),
                              child: Center(child: Text('Mot de passe oublié ?')),
                            ),
                          ),

                        ],
                      ),
                    ),

                    const SizedBox(height: 20,),

                    InkWell(
                      child: Container(
                        height:size.height *0.08,
                        width: size.width *0.42,
                        decoration: const BoxDecoration(
                          // boxShadow: [BoxShadow(
                          //     offset: Offset(10.0, 20.0),
                          //     color: Colors.blueGrey,
                          //     blurRadius: 30.0
                          // )],
                            color: primaryColor,
                            borderRadius: BorderRadius.only(
                              // bottomLeft: Radius.circular(22.0),
                                topLeft: Radius.circular(20.0),
                                bottomRight: Radius.circular(20.0)
                            )
                        ),
                        child: const Center(child: Text('Se connecter',style: TextStyle(fontSize: 20.0,color: Colors.white),)),
                      ),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                      },
                    ),

                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterScreen()));
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


