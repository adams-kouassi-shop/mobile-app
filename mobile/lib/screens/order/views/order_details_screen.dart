import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:shop/constants.dart';
import 'package:shop/screens/order/views/commande_statut.dart';

class OrderDetailsScreen extends StatefulWidget {
  const OrderDetailsScreen({super.key});

  @override
  State<OrderDetailsScreen> createState() => _OrderDetailsScreenState();
}

class _OrderDetailsScreenState extends State<OrderDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        leading: IconButton(
          onPressed: (){Navigator.pop(context);},
          icon: Icon(Icons.chevron_left,color: blackColor,),
        ),
        centerTitle: true,
        title: Text('Détails  commandes'),
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 4,
                      offset: Offset(0, 2), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text('Commande #35678902',),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0,left: 8),
                      child: Row(
                        children: [
                          Text('Placé:  21-07-2024',style: TextStyle(fontSize: 12),),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 2.0,left: 8),
                      child: Row(
                        children: [
                          Text("N° d'article: 1",style: TextStyle(fontSize: 12),),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 2.0,left: 8),
                      child: Row(
                        children: [
                          Text("Total: 1000 Fcfa",style: TextStyle(fontSize: 12),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(top: defaultPadding),
                child: Row(
                  children: [
                    Text('Articles dans votre commande'.toUpperCase(),style: TextStyle(fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 12),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                              color: primaryColor,
                              borderRadius: BorderRadius.circular(2)
                          ),
                          child: Text('Pret à etre recupere'.toUpperCase(),style: TextStyle(fontSize: 12,color: whiteColor),),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Livré avant le mercredi 24-07'),
                        ],
                      ),
                    ),
                    Divider(color: greyColor,),

                    Container(
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
                      child: ListTile(
                        onLongPress: (){
                          print('object');
                        },
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>OrderDetailsScreen()));
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
                                    child: Text('Variation: black',style: TextStyle(fontSize: 12),overflow: TextOverflow.ellipsis,)
                                )
                              ],
                            ),
                          ],
                        ),
                        subtitle: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: Row(
                                children: [
                                  Text('Qté: 1',style: TextStyle(fontSize: 12),)
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Row(
                                children: [
                                  Text('7000 Fcfa',style: TextStyle(fontSize: 12,color: blackColor),),
                                  Text('   7000 Fcfa',style: TextStyle(fontSize: 12,color: blackColor), ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(color: greyColor,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>CommandeStatut()));
                        },
                        child: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              color: primaryColor,
                              borderRadius: BorderRadius.circular(4),
                              border: Border.all(color: primaryColor)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text('Suivre votre colis',style: TextStyle(color: whiteColor,fontWeight: FontWeight.bold),)
                            ],
                          ),
                        ),
                      ),
                    ),
                    Divider(color: greyColor,),
                    Row(
                      children: [
                        Text('PAIEMENT'.toUpperCase(),style: TextStyle(fontWeight: FontWeight.bold),),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 12),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text('Méthode de paiement',style: TextStyle(fontWeight: FontWeight.bold)),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Row(
                              children: [
                                Text('Payer cash à la livraison'),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 6.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Détails du paiement',style: TextStyle(fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Total des articles : 190000 Fcfa"),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Frais de livraison : 500 Fcfa"),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Total : 190500 Fcfa"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(color: greyColor,),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        children: [
                          Text('Livraison'.toUpperCase(),style: TextStyle(fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 12),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text('Adresse du point de livraison',style: TextStyle(fontWeight: FontWeight.bold)),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Row(
                              children: [
                                Text('Abidjan Abobo marché de nuit '),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
