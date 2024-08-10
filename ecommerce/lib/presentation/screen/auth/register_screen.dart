import 'package:ecommerce/presentation/const/constants.dart';
import 'package:flutter/material.dart';
class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool _secureText = true;
  TextEditingController _namehere = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size =  MediaQuery.of(context).size;
    return Scaffold(

      appBar: AppBar(
        elevation: 0,
        backgroundColor: primaryColor,
        leading: IconButton(
          onPressed:()=>Navigator.pop(context),
          icon: Icon(Icons.chevron_left,color: whiteColor),
        ),
        title: Text('Créer un compte'),
        centerTitle: true,
      ),
      body: Stack(
        alignment: Alignment.center,
        clipBehavior: Clip.none,
        children: [
          Positioned(
            height: size.height *0.30,
            width: size.width *100,
            top: 0,
            child: Container(
              color: primaryColor,
              // width: double.infinity,
              height: size.height,
            ),
          ),
          Positioned(
            width: size.width *0.95,
            height: size.height *0.84,
            top: 12,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
                side: BorderSide(
                  color: Colors.grey.withOpacity(0.2),
                  width: 1,
                ),
              ),
              elevation: 15,
              child: Column(
                children: [
                  SizedBox(
                    // margin: EdgeInsets.only(top: 150),
                    height: size.height *0.11,
                    width: size.width *0.50,
                    child: Image.asset('assets/images/welcome.png'),
                  ),
                  SizedBox(height: defaultPadding,),

                  SizedBox(
                    height: size.height *0.07,
                    width: size.width *0.65,
                    child: TextFormField(
                      controller: _namehere,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                            ),
                          ),
                          suffixIcon: Icon(Icons.person),
                          labelText: 'Nom',
                          hintText: "Nom"
                      ),
                      keyboardType: TextInputType.text,
                      obscureText: false,
                    ),
                  ),

                  SizedBox(height: defaultPadding),

                  SizedBox(
                    height:MediaQuery.of(context).size.height *0.07,
                    width: size.width *0.65,
                    child: TextFormField(
                      controller: _namehere,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                            ),
                          ),
                          suffixIcon: Icon(Icons.person),
                          labelText: 'Prénoms',
                          hintText: "Prénoms"

                      ),
                      keyboardType: TextInputType.text,
                      obscureText: false,
                    ),
                  ),

                  SizedBox(height: defaultPadding,),

                  SizedBox(
                    height:MediaQuery.of(context).size.height *0.07,
                    width: size.width *0.65,
                    child: TextFormField(
                      controller: _namehere,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                            ),
                          ),
                          suffixIcon: Icon(Icons.email),
                          labelText: 'E-mail',
                          hintText: "E-mail"
                      ),
                      keyboardType: TextInputType.emailAddress,
                      obscureText: false,
                    ),
                  ),

                  SizedBox(height: defaultPadding),

                  SizedBox(
                    height:MediaQuery.of(context).size.height *0.07,
                    width: size.width *0.65,
                    child: TextFormField(
                      controller: _namehere,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                            ),
                          ),
                          suffixIcon: Icon(Icons.call),
                          labelText: 'Téléphone',
                          hintText: "Téléphone"
                      ),
                      keyboardType: TextInputType.emailAddress,
                      obscureText: false,
                    ),
                  ),

                  SizedBox(height: defaultPadding,),

                  SizedBox(
                    height: size.height *0.07,
                    width: size.width *0.65,
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
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

                  SizedBox(height: defaultPadding,),

                  SizedBox(
                    height: size.height *0.07,
                    width: size.width *0.65,
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                            ),
                          ),
                          labelText: 'Confirmer mot de passe',
                          hintText: "Confirmer mot de passe",
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
                  SizedBox(height: defaultPadding,),
                  InkWell(
                    child: Container(
                      height: size.height *0.06,
                      width: size.width *0.42,
                      decoration: const BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.only(
                            // bottomLeft: Radius.circular(22.0),
                              topLeft: Radius.circular(20.0),
                              bottomRight: Radius.circular(20.0)
                          )
                      ),
                      child: const Center(child: Text('Sign Up',style: TextStyle(fontSize: 20.0,color: Colors.white),)),
                    ),
                    onTap: (){

                    },
                  ),

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}