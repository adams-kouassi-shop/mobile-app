import 'package:ecommerce/presentation/const/constants.dart';
import 'package:ecommerce/presentation/screen/order/views/order_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class OrderedScreen extends StatefulWidget {
  const OrderedScreen({super.key});

  @override
  State<OrderedScreen> createState() => _OrderedScreenState();
}

class _OrderedScreenState extends State<OrderedScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: whiteColor,
        appBar:PreferredSize(
          preferredSize: Size.fromHeight(size.height*0.17),
          child: Column(
            children: [
              AppBar(
                leading: IconButton(
                  onPressed: (){Navigator.pop(context);},
                  icon: Icon(Icons.chevron_left,color: whiteColor,),
                ),
                centerTitle: true,
                title: Text('Mes commandes'),
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
              Padding(
                padding:  EdgeInsets.only(bottom: 4,top: 4),
                child: TabBar(
                    onTap: (index){},
                    labelColor:primaryColor,
                    dividerColor: greyColor,
                    unselectedLabelColor:blackColor,
                    tabs: [
                      Tab(
                        child: Container(
                            padding: EdgeInsets.all(6),
                            child: Text('En cours / Livrées',style: TextStyle(fontSize: 15),textAlign: TextAlign.center,)
                        ),
                      ),
                      Tab(
                        child: Container(
                            padding: EdgeInsets.all(6),
                            child: Text('Annulées ',style: TextStyle(fontSize: 15),textAlign: TextAlign.center,)
                        ),
                      ),
                    ]
                ),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: whiteColor,
              height: size.height*0.76,
              child: TabBarView(
                children: [
                  SizedBox(
                    height: size.height*0.76,
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
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Row(
                                        children: [
                                          Text('Livré avant mercredi, 24-07',style: TextStyle(fontSize: 12,color: blackColor),)
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height*0.76,
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
                              child: ListTile(
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
                                          Container(
                                            padding: EdgeInsets.all(2),
                                            decoration: BoxDecoration(
                                                color: greyColor,
                                                borderRadius: BorderRadius.circular(2)
                                            ),
                                            child: Text('Annulée'.toUpperCase(),style: TextStyle(fontSize: 12,color: whiteColor),),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Row(
                                        children: [
                                          Text('Livré avant mercredi, 24-07',style: TextStyle(fontSize: 12,color: blackColor),)
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
