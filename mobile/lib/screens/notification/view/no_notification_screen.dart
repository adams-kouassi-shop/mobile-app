import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:shop/components/buy_full_ui_kit.dart';
import 'package:shop/constants.dart';

class NoNotificationScreen extends StatelessWidget {
  const NoNotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){Navigator.pop(context);},
          icon: Icon(Icons.chevron_left,color: blackColor,),
        ),
        title: Text('Notifications'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/Search.svg", height: 24, colorFilter: ColorFilter.mode(Theme.of(context).textTheme.bodyLarge!.color!, BlendMode.srcIn),),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>NoNotificationScreen()));
            },
            icon: SvgPicture.asset("assets/icons/Notification.svg",
              height: 24,
              colorFilter: ColorFilter.mode(Theme.of(context).textTheme.bodyLarge!.color!, BlendMode.srcIn),),
          ),
        ],
      ),
    );
  }
}
