import 'package:ecommerce/presentation/const/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';
import 'package:flutter_svg/flutter_svg.dart';


class RatingProduct extends StatefulWidget {
  const RatingProduct({super.key});

  @override
  State<RatingProduct> createState() => _RatingProductState();
}

class _RatingProductState extends State<RatingProduct> {
  double rating = 0;
  int starCount = 5;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){Navigator.pop(context);},
          icon: Icon(Icons.chevron_left,color: whiteColor,),
        ),
        centerTitle: true,
        title: Text("Evaluez produit"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Text('Comment évaluez-vous ce produit ?'.toUpperCase()),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.05),
                        spreadRadius: 6,
                        blurRadius: 7,
                        offset: Offset(2, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        onLongPress: (){
                          print('object');
                        },
                        onTap: (){},
                        leading: Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('${productDemoImg1}')
                              )
                          ),
                        ),
                        title: Text('Mountain Warehouse for Women',),
                      ),
                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 28.0),
                child: Text('Touchez les étoiles pour choisir'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: StarRating(
                  size: 40.0,
                  rating: rating,
                  color: Colors.orange,
                  borderColor: Colors.grey,
                  allowHalfRating: false,
                  starCount: starCount,
                  onRatingChanged: (rating) => setState(() {
                    print(rating);
                    this.rating = rating;
                  }),
                ),
              ),
              if(rating != 0)
              Padding(
                padding: EdgeInsets.only(left: 8.0,right: 8,top: size.height*0.05),
                child: Container(
                  padding: EdgeInsets.all(6),
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
                  child: Form(
                    child: Column(
                      children: [
                        TextFormField(
                          controller: TextEditingController(text: 'DOUMBIA'),
                          onSaved: (nom) {},
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
              ),

            ],
          ),
        ),
      ),
    );
  }
}
