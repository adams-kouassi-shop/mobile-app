import 'package:flutter/material.dart';
import 'package:shop/components/product/product_card.dart';
import 'package:badges/badges.dart' as badges;
import 'package:shop/constants.dart';
import 'package:shop/route/route_constants.dart';

class ShowBoutiqueScreen extends StatefulWidget {
  const ShowBoutiqueScreen({super.key});

  @override
  State<ShowBoutiqueScreen> createState() => _ShowBoutiqueScreenState();
}

class _ShowBoutiqueScreenState extends State<ShowBoutiqueScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: whiteColor,
      appBar:AppBar(
        leading: IconButton(
          onPressed: (){Navigator.pop(context);},
          icon: Icon(Icons.chevron_left,color: blackColor,),
        ),
        title: Text('Nom de la boutique ici',style: TextStyle(color: blackColor),),
        centerTitle: true,
        backgroundColor: whiteColor,
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
      body:SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                height: size.height*0.2,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/image_boutique.jpg'),
                        fit: BoxFit.cover
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 2),
                child: Container(
                    width: size.width,
                    height: 50,
                    padding: EdgeInsets.only(left: 12,right: 12),
                    decoration: BoxDecoration(
                        color: whiteColor
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                            child: Text("Les meilleures offres", style: Theme.of(context).textTheme.titleSmall,overflow: TextOverflow.ellipsis,)
                        ),
                        TextButton(
                            onPressed: null,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                    padding: EdgeInsets.all(6),
                                    height: 30,
                                    decoration: BoxDecoration(
                                        color: warningColor,
                                        borderRadius: BorderRadius.circular(20)
                                    ),
                                    child: Text('12',style: Theme.of(context).textTheme.titleSmall,)
                                ),
                              ],
                            )
                        )
                      ],
                    )
                ),
              ),
              Divider(color: greyColor,),
              SizedBox(
                height: size.height*0.76,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14,vertical: 2),
                  child: GridView.builder(
                    itemCount: 6,
                    gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200.0,
                      mainAxisSpacing: defaultPadding,
                      crossAxisSpacing: defaultPadding,
                      childAspectRatio: 0.66,
                    ),
                    itemBuilder: (BuildContext context, int index){
                      return Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: ProductCard(
                          image: productDemoImg1,
                          brandName: 'Mountain Warehouse for Women',
                          title:'Lipsy london',
                          price: 540,
                          priceAfetDiscount:420,
                          dicountpercent: 20,
                          press: () {
                            Navigator.pushNamed(context, productDetailsScreenRoute);
                          },
                        ),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(height: defaultPadding,)
            ],
          ),
        ),
      ),
    );
  }
}



