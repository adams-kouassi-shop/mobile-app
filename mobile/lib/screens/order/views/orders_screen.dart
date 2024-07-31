import 'package:flutter/material.dart';
import 'package:shop/constants.dart';
import 'package:shop/screens/order/views/adress_screen.dart';
import 'package:shop/screens/order/views/successfull_orders_screen.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){Navigator.pop(context);},
          icon: Icon(Icons.chevron_left,color: blackColor,),
        ),
        title: Text('Passez votre commande'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(12),
            child: Column(
              children: [
                Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text('Résumé de votre commande'.toUpperCase(),style: TextStyle(color: blackColor,fontWeight: FontWeight.bold),),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 12),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Total articles(2)'),
                                Text('150000 F'),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 12.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Frais de livraison'),
                                  Text('500 F'),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 12.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Réduction'),
                                  Text('- 500 F',style: TextStyle(color: Colors.green),),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(color: greyColor,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Total',style: TextStyle(color: blackColor,fontWeight: FontWeight.bold),),
                          Text('15000 F',style: TextStyle(color: blackColor,fontWeight: FontWeight.bold),),
                        ],
                      ),
                      Divider(color: greyColor,),
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text('Mode de paiement'.toUpperCase(),style: TextStyle(color: blackColor,fontWeight: FontWeight.bold),),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text('Payer cash à la livraison.')
                                    ],
                                  ),
                                  Text("Reglez vos achats en espèces directement à la livraison. Nous n'accepterons que les Francs CFA.")
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Divider(color: greyColor,),
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('adresse'.toUpperCase(),style: TextStyle(color: blackColor,fontWeight: FontWeight.bold),),
                                GestureDetector(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>AdressScreen()));
                                  },
                                  child: Row(
                                    children: [
                                      Icon(Icons.edit,size: 20,color: warningColor,),
                                      Text(' modifier'.toUpperCase(),style: TextStyle(color: warningColor,fontWeight: FontWeight.bold),),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text('DOUMBIA ADAMA.'.toUpperCase())
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                          child: Text("Côte d'Ivoire Abidjan / Abobo pk18",overflow: TextOverflow.ellipsis,)
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Divider(color: greyColor,),
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Produit'.toUpperCase(),style: TextStyle(color: blackColor,fontWeight: FontWeight.bold),),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Column(
                                children: [
                                  ListTile(
                                    leading: Image.asset('assets/images/phone1.png',fit: BoxFit.contain,width: 80,height: 80,),
                                    title:  Container(
                                      padding: EdgeInsets.only(right: 8, top: 4),
                                      child: Text("NIKE XTM Basketball Shoeas", maxLines: 2, softWrap: false, style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 14),),
                                    ),
                                    subtitle: Text("\$299.00", style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: primaryColor),),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Container(
                          child: GestureDetector(
                            child: Row(
                              children: [
                                Icon(Icons.chevron_left,color: primaryColor,),
                                Text('Rétour à vous achat',style:TextStyle(color: primaryColor),)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SuccessfullOrdersScreen()));
          },
          child: Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(4),
                border: Border.all(color: primaryColor)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Confirmer la commande',style: TextStyle(color: whiteColor,fontWeight: FontWeight.bold),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
