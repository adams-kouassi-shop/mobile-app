import 'package:ecommerce/presentation/const/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){Navigator.pop(context);},
          icon: Icon(Icons.chevron_left,color: whiteColor,),
        ),
        title: Text('Notifications'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/Search.svg", height: 24, color: whiteColor),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>NotificationsScreen()));
            },
            icon: SvgPicture.asset("assets/icons/Notification.svg", height: 24, color: whiteColor,),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // While loading use 👇
            // const Expanded(
            //   child: DiscoverCategoriesSkelton(),
            // ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Liste des notifications'.toUpperCase(),style: TextStyle(color: blackColor,fontWeight: FontWeight.bold),),
                      Text('12'.toUpperCase(),style: TextStyle(color: blackColor,fontWeight: FontWeight.bold),),
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
                        onTap: (){},
                        leading: Image.asset("assets/images/banner_2.jpg"),
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
                        leading: Image.asset("assets/images/banner_2.jpg"),
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
                        leading: Image.asset("assets/images/banner_2.jpg"),
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
