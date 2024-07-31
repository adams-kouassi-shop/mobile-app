import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:shop/constants.dart';
import 'package:timelines/timelines.dart';

class CommandeStatut extends StatefulWidget {
  const CommandeStatut({super.key});

  @override
  State<CommandeStatut> createState() => _CommandeStatutState();
}

class _CommandeStatutState extends State<CommandeStatut> {
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
        title: Text("Etat de l'article"),
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
      body: Container(
        padding: EdgeInsets.all(20),
        child: Timeline.tileBuilder(

          builder: TimelineTileBuilder.fromStyle(
            indicatorStyle: IndicatorStyle.dot,
            connectorStyle: ConnectorStyle.solidLine,
            itemCount: 5,
            contentsAlign: ContentsAlign.basic,
            contentsBuilder: (context, index) => Padding(
              padding: EdgeInsets.all(24.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(2)
                        ),
                        child: Text('Pret à etre recupere ${index}'.toUpperCase(),style: TextStyle(fontSize: 12,color: whiteColor),),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Row(
                      children: [
                        Text('21-07')
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          theme: TimelineTheme.of(context).copyWith(nodePosition: 0,),


        ),
      ),
    );
  }
}
