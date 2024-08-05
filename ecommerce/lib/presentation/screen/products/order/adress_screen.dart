import 'package:ecommerce/presentation/const/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AdressScreen extends StatefulWidget {
  const AdressScreen({super.key});

  @override
  State<AdressScreen> createState() => _AdressScreenState();
}

class _AdressScreenState extends State<AdressScreen> {
  final formKey = GlobalKey<FormState>();
  bool update  = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        elevation: 0,
        leading: IconButton(
          onPressed: (){Navigator.pop(context);},
          icon: Icon(Icons.chevron_left,color: blackColor,),
        ),
        title: Text('Modifier son adresse',style: TextStyle(color: blackColor),)
      ),
      body: ListView(
        children: [
          if(update)
            Padding(
              padding: EdgeInsets.only(top: size.height*0.04,left: 12,right: 12,bottom: 12),
              child: Container(
                padding: EdgeInsets.all(4),
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
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 4.0,left: 4),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Fermer',style: TextStyle(color: errorColor,fontWeight: FontWeight.bold),),
                          IconButton(
                              onPressed: (){
                                setState(() {
                                  update =!update;
                                });
                              },
                              icon: Icon(Icons.close,color: errorColor,)
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Form(
                        key: formKey,
                        child: Column(
                          children: [
                            TextFormField(
                              controller: TextEditingController(text: 'DOUMBIA'),
                              onSaved: (nom) {
                                // Email
                              },
                              validator: textfiledValidator.call,
                              textInputAction: TextInputAction.next,
                              enabled:false,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(12),
                                hintText: "Nom",
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: defaultPadding * 0.75),
                                  child: SvgPicture.asset("assets/icons/Profile.svg", height: 24, width: 24, colorFilter: ColorFilter.mode(Theme.of(context).textTheme.bodyLarge!.color!.withOpacity(0.3), BlendMode.srcIn,),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: defaultPadding),
                            TextFormField(
                              controller: TextEditingController(text: 'ADAMA'),
                              onSaved: (prenoms) {
                                // Email
                              },
                              validator: textfiledValidator.call,
                              textInputAction: TextInputAction.next,
                              enabled:false,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(12),
                                hintText: "Prénoms",
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: defaultPadding * 0.75),
                                  child: SvgPicture.asset("assets/icons/Profile.svg", height: 24, width: 24, colorFilter: ColorFilter.mode(Theme.of(context).textTheme.bodyLarge!.color!.withOpacity(0.3), BlendMode.srcIn,),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: defaultPadding),
                            TextFormField(
                              controller: TextEditingController(text: '+225 0545205917'),
                              onSaved: (prenoms) {
                                // Email
                              },
                              validator: textfiledValidator.call,
                              textInputAction: TextInputAction.next,
                              enabled:false,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(12),
                                hintText: "Téléphone",
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: defaultPadding * 0.75),
                                  child: SvgPicture.asset("assets/icons/Call.svg", height: 24, width: 24, colorFilter: ColorFilter.mode(Theme.of(context).textTheme.bodyLarge!.color!.withOpacity(0.3), BlendMode.srcIn,),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: defaultPadding),
                            TextFormField(
                              onSaved: (emal) {
                                // Email
                              },
                              validator: emaildValidator.call,
                              textInputAction: TextInputAction.next,
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(12),
                                hintText: "Adresse",
                                prefixIcon: Padding(
                                  padding:
                                  const EdgeInsets.symmetric(vertical: defaultPadding * 0.75),
                                  child: SvgPicture.asset("assets/icons/Location.svg", height: 24, width: 24, colorFilter: ColorFilter.mode(Theme.of(context).textTheme.bodyLarge!.color!.withOpacity(0.3), BlendMode.srcIn,),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: defaultPadding),
                            TextFormField(
                              onSaved: (pass) {
                                // Password
                              },
                              validator: passwordValidator.call,
                              obscureText: true,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(12),
                                hintText: "Region",
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: defaultPadding * 0.75),
                                  child: SvgPicture.asset("assets/icons/Loading.svg", height: 24, width: 24, colorFilter: ColorFilter.mode(Theme.of(context).textTheme.bodyLarge!.color!.withOpacity(0.3), BlendMode.srcIn,),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: defaultPadding),
                            TextFormField(
                              onSaved: (pass) {
                                // Password
                              },
                              validator: passwordValidator.call,
                              obscureText: true,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(12),
                                hintText: "Ville",
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: defaultPadding * 0.75),
                                  child: SvgPicture.asset("assets/icons/Loading.svg", height: 24, width: 24, colorFilter: ColorFilter.mode(Theme.of(context).textTheme.bodyLarge!.color!.withOpacity(0.3), BlendMode.srcIn,),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          else
            Padding(
              padding: EdgeInsets.only(top: size.height*0.1,left: 12,right: 12,bottom: 12),
            child: Container(
              padding: EdgeInsets.all(4),
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
              child: Column(
                children: [
                  ListTile(
                    title: Text('DOUMBIA ADAMA',style: TextStyle(color: blackColor,fontWeight: FontWeight.bold),),
                    subtitle: Column(
                      children: [
                        Row(
                          children: [
                            Text('Rond point Gabiadji'),
                          ],
                        ),
                        Row(
                          children: [
                            Text('Abidjan-Lagune'),
                          ],
                        ),
                        Row(
                          children: [
                            Text('Abobo pk18'),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0,right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.error,size: 20,color: Colors.green,),
                                  Text('Adresse par défaut',style: TextStyle(color:  Colors.green,),),
                                ],
                              ),
                              IconButton(
                                onPressed: (){
                                  setState(() {
                                    update =! update;
                                  });
                                },
                                icon: Icon(Icons.edit,color: primaryColor,),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: update ? GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(4),
                border: Border.all(color: primaryColor)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Modifier mon adresse',style: TextStyle(color: whiteColor,fontWeight: FontWeight.bold),)
              ],
            ),
          ),
        ) :  GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(4),
                border: Border.all(color: primaryColor)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.chevron_left,color: whiteColor,),
                Text('Retour',style: TextStyle(color: whiteColor,fontWeight: FontWeight.bold),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
