import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';
import 'package:shop/constants.dart';
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
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){Navigator.pop(context);},
          icon: Icon(Icons.chevron_left,color: blackColor,),
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
                    this.rating = rating;
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
