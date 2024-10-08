import 'package:ecommerce/presentation/components/products/product_card.dart';
import 'package:ecommerce/presentation/const/constants.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;


class ShowDiscoverScreen extends StatefulWidget {
  const ShowDiscoverScreen({super.key});

  @override
  State<ShowDiscoverScreen> createState() => _ShowDiscoverScreenState();
}

class _ShowDiscoverScreenState extends State<ShowDiscoverScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: whiteColor,
      appBar:AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: (){Navigator.pop(context);},
          icon: Icon(Icons.chevron_left,color: whiteColor,),
        ),
        title: Text('Nom de la catégorie selectionnée ici',style: TextStyle(color: whiteColor),),
        centerTitle: true,
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
          Container(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: size.height*0.01),
                  child: Container(
                      width: size.width,
                      height: 50,
                      padding: EdgeInsets.only(left: 12,right: 12),
                      decoration: BoxDecoration(
                          color: warningColor
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                              child: Text("Informatiques", style: Theme.of(context).textTheme.titleSmall,overflow: TextOverflow.ellipsis,)
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
                  height: size.height*0.8,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 14,vertical: 8,),
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
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>ShowDiscoverScreen()));
                            },
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
