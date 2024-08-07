import 'package:ecommerce/presentation/const/constants.dart';
import 'package:ecommerce/presentation/screen/products/rating_product.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;


class NoteScreen extends StatefulWidget {
  const NoteScreen({super.key});

  @override
  State<NoteScreen> createState() => _NoteScreenState();
}

class _NoteScreenState extends State<NoteScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar:  AppBar(
        leading: IconButton(
          onPressed: (){Navigator.pop(context);},
          icon: Icon(Icons.chevron_left,color: whiteColor,),
        ),
        centerTitle: true,
        title: Text("Notes et avis"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: badges.Badge(
              badgeContent: Text('${cartContent.length}',style: TextStyle(color: whiteColor,fontWeight: FontWeight.bold),),
              child: Icon(Icons.shopping_cart,size: 30,),
              badgeStyle: badges.BadgeStyle(
                //shape: badges.BadgeShape.square,
                badgeColor: Colors.red,
                padding: EdgeInsets.all(5),
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: size.height*0.78,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14,vertical: 2),
                child: ListView.builder(
                  itemCount: 6,
                  itemBuilder: (BuildContext context, int index){
                    return Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Container(
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
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>RatingProduct()));
                              },
                              leading: Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('${productDemoImg1}')
                                    )
                                ),
                              ),
                              title: Column(
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                          child: Text('Mountain Warehouse for Women',overflow: TextOverflow.ellipsis,)
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                          child: Text('Commande #123456789',style: TextStyle(fontSize: 12),overflow: TextOverflow.ellipsis,)
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              subtitle: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Row(
                                      children: [
                                        Text('Livré le mercredi, 24-07'.toUpperCase(),style: TextStyle(fontSize: 12,color: Colors.green),)
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(color: greyColor,),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  GestureDetector(
                                    onTap:(){},
                                    child: Container(
                                      padding: EdgeInsets.all(6),
                                      decoration: BoxDecoration(
                                        color: primaryColor,
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                      child: Text('évaluez ce produit'.toUpperCase(),style: TextStyle(color: whiteColor),),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
