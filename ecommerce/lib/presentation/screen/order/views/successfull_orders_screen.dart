import 'package:ecommerce/presentation/components/products/product_card.dart';
import 'package:ecommerce/presentation/const/constants.dart';
import 'package:ecommerce/presentation/screen/order/views/order_details_screen.dart';
import 'package:ecommerce/presentation/screen/products/product_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SuccessfullOrdersScreen extends StatefulWidget {
  const SuccessfullOrdersScreen({super.key});

  @override
  State<SuccessfullOrdersScreen> createState() => _SuccessfullOrdersScreenState();
}

class _SuccessfullOrdersScreenState extends State<SuccessfullOrdersScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: lightGreyColor,
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){Navigator.pop(context);},
          icon: Icon(Icons.chevron_left,color: whiteColor,),
        ),
        title: Text('Commande confirmée'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Container(
                  child: ListTile(
                    leading: Container(
                      padding: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.circular(80)
                      ),
                      child: Icon(Icons.check_outlined,color: Colors.green,size: 50,),
                    ),
                    title: Text("Merci d'avoir passé une commande sur nom entreprise!"),
                    subtitle: Text('Commande N° 123456788'),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: whiteColor
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.shopping_cart),
                              Text(" Point de livraison",style: TextStyle(color: blackColor,fontWeight: FontWeight.bold),)
                            ],
                          ),
                          Column(
                            children: [
                              Text("Nous vous contacterons sur votre numéro de téléphone pour par e-mail dès la disponiblité de votre colis dans notre agence"),
                              Row(
                                children: [
                                  Text("Livraison prévue le 29 Juillet")
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: whiteColor
                    ),
                    child: ListTile(
                      leading: SvgPicture.asset("assets/icons/Wallet.svg", color: primaryColor),
                      title: Text('Paiement Cash à la livraison'),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 28.0),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>OrderDetailsScreen()));
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
                          Text('Détails de la commande'.toUpperCase(),style: TextStyle(color: whiteColor,),)
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Column(
                    children: [
                      Container(
                          width: size.width,
                          height: 50,
                          padding: EdgeInsets.only(left: 2,right: 2),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Consulter récemment", style: Theme.of(context).textTheme.titleSmall,),
                              TextButton(
                                  onPressed: null,
                                  child: Row(
                                    children: [
                                      Text('Voir plus',style: Theme.of(context).textTheme.titleSmall,),
                                      Icon(Icons.chevron_right,color: blackColor,)
                                    ],
                                  )
                              )
                            ],
                          )
                      ),
                      Container(
                        height: size.height*0.36,
                        decoration: BoxDecoration(
                          color: whiteColor
                        ),
                        child:  ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (context, index) => Padding(
                            padding: EdgeInsets.only(left: defaultPadding, right: index == 4 ? defaultPadding : 0),
                            child: ProductCard(
                              image: productDemoImg2,
                              title: "Sleeveless Tiered Dobby Swing Dress",
                              brandName: "LIPSY LONDON",
                              price: 24.65,
                              priceAfetDiscount: index.isEven ? 20.99 : null,
                              dicountpercent: index.isEven ? 25 : null,
                              press: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductDetailsScreen()));
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
