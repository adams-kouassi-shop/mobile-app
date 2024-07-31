import 'package:flutter/material.dart';
import 'package:shop/constants.dart';
import 'package:badges/badges.dart' as badges;
import 'package:shop/screens/order/views/order_details_screen.dart';

class ListEnvieScreen extends StatefulWidget {
  const ListEnvieScreen({super.key});

  @override
  State<ListEnvieScreen> createState() => _ListEnvieScreenState();
}

class _ListEnvieScreenState extends State<ListEnvieScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar:  AppBar(
        leading: IconButton(
          onPressed: (){Navigator.pop(context);},
          icon: Icon(Icons.chevron_left,color: blackColor,),
        ),
        centerTitle: true,
        title: Text("Ma liste d'envie"),
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
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                          padding: EdgeInsets.all(4),
                                          decoration: BoxDecoration(
                                            color: Colors.red,
                                            borderRadius: BorderRadius.circular(6),
                                          ),
                                          child: Text('-2%',style: TextStyle(fontSize: 12,color: whiteColor),overflow: TextOverflow.ellipsis)
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
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('100 FCFA',style: TextStyle(fontSize: 12,color: blackColor,fontWeight: FontWeight.bold),),
                                        Text('5000 Fcfa',style: TextStyle(fontSize: 12,color: greyColor,decoration: TextDecoration.lineThrough,),),
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
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Supprimer",style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold),),
                                  Container(
                                    padding: EdgeInsets.all(6),
                                    decoration: BoxDecoration(
                                      color: primaryColor,
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                    child: Text('Acheter',style: TextStyle(color: whiteColor,fontWeight: FontWeight.bold),),
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
