import 'package:ecommerce/presentation/const/constants.dart';
import 'package:ecommerce/presentation/screen/products/order/order_screen.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;


class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: whiteColor,
      appBar:AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed:()=>Navigator.pop(context),
          icon: Icon(Icons.chevron_left,color: whiteColor),
        ),
        title: Text('Panier',style: TextStyle(color: whiteColor),),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: badges.Badge(
              badgeContent: Text('${cartContent.length}',style: TextStyle(color: whiteColor,fontWeight: FontWeight.bold),),
              child: Icon(Icons.shopping_cart,size: 30,color: whiteColor,),
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
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(top: 6,bottom: 6),
                child: Column(
                  children: [
                    Container(
                      width: size.width,
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: greyColor,
                      ),
                      child: Row(
                        children: [
                          Container(
                            child: Text('RESUME DU PANIER'),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(6),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Sous-total'),
                          Text('6.500Fcfa'),
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text("Total(3) Items", style:Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 12, color: Colors.grey),),
                      margin: EdgeInsets.only(left: 12, top: 4),
                    ),
                    ListView.builder(
                      itemCount: 2,
                      shrinkWrap: true,
                      primary: false,
                      itemBuilder: (context, position) {
                        return Stack(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left: 16, right: 16, top: 16),
                              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(16))),
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(right: 8, left: 8, top: 8, bottom: 8),
                                    width: 80,
                                    height: 80,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(14)),
                                        color: Colors.blue.shade200,
                                        image: DecorationImage(image: AssetImage("assets/images/phone1.png"))),
                                  ),
                                  Expanded(
                                    child: Container(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Container(
                                            padding: EdgeInsets.only(right: 8, top: 4),
                                            child: Text("NIKE XTM Basketball Shoeas", maxLines: 2, softWrap: true, style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 14),),
                                          ),
                                          SizedBox(height: 6),
                                          Text("Green M", style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.grey, fontSize: 14),),
                                          Container(
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: <Widget>[
                                                Text("\$299.00", style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: primaryColor),),
                                                Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    crossAxisAlignment: CrossAxisAlignment.end,
                                                    children: <Widget>[
                                                      Icon(Icons.remove, size: 24, color: Colors.grey.shade700,),
                                                      Container(
                                                        color: Colors.grey.shade200,
                                                        padding: const EdgeInsets.only(bottom: 2, right: 12, left: 12),
                                                        child: Text("1",),
                                                      ),
                                                      Icon(Icons.add, size: 24, color: Colors.grey.shade700,
                                                      )
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    flex: 100,
                                  )
                                ],
                              ),
                            ),
                            Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                width: 24,
                                height: 24,
                                alignment: Alignment.center,
                                margin: EdgeInsets.only(right: 10, top: 8),
                                child: Icon(Icons.close, color: Colors.white, size: 20,
                                ),
                                decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(4)), color: primaryColor),
                              ),
                            )
                          ],
                        );
                      },
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(8),
        child: Padding(
          padding: EdgeInsets.all(6),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: primaryColor)
                  ),
                  child: Text('Total : 100000 Fcfa')
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>OrdersScreen()));
                },
                child: Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: primaryColor)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.shopping_cart,color: whiteColor,),
                      Text('Commander',style: TextStyle(color: whiteColor),)
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}




