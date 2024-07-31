import 'package:flutter/material.dart';
import 'package:shop/constants.dart';
import 'package:shop/screens/categories/views/show_discover_screen.dart';


class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // While loading use 👇
            // const Expanded(
            //   child: DiscoverCategoriesSkelton(),
            // ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('Catégories'.toUpperCase(),style: TextStyle(color: blackColor,fontWeight: FontWeight.bold),),
                    ],
                  ),
                  Divider(color: greyColor,),
                  Padding(
                    padding: const EdgeInsets.only(top: 4.0,left: 8,right: 4),
                    child: Container(
                      height: 80,
                      padding: EdgeInsets.only(top: 4,bottom: 4),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child:  ListTile(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ShowDiscoverScreen()));
                        },
                        leading: Image.asset("assets/Illustration/Illustration-1.png"),
                        title: Text('Materiels informatiques'),
                        trailing: Icon(Icons.chevron_right),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0,left: 4,right: 4),
                    child: Container(
                      height: 80,
                      padding: EdgeInsets.only(top: 4,bottom: 4),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child:  ListTile(
                        leading: Image.asset("assets/Illustration/Illustration-1.png"),
                        title: Text('Materiels informatiques'),
                        trailing: Icon(Icons.chevron_right),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0,left: 4,right: 4),
                    child: Container(
                      height: 80,
                      padding: EdgeInsets.only(top: 4,bottom: 4),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child:  ListTile(
                        leading: Image.asset("assets/Illustration/Illustration-1.png"),
                        title: Text('Materiels informatiques'),
                        trailing: Icon(Icons.chevron_right),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
