import 'package:flutter/material.dart';
import 'package:shop/constants.dart';

import '../../network_image_with_loader.dart';

class BannerM extends StatelessWidget {
  const BannerM(
      {super.key,
      required this.image,
      required this.press,
      required this.children});

  final String image;
  final VoidCallback press;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.87,
      child: GestureDetector(
        onTap: press,
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('${image}')
                )
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(flex: 2),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.75,
                    child: Text('text', style: const TextStyle(fontFamily: grandisExtendedFont, fontWeight: FontWeight.w600, fontSize: 24, color: Colors.white,
                    ),
                    ),
                  ),
                  const Spacer(),
                  const Text("Shop now", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600,),),
                  const SizedBox(
                    width: 64,
                    child: Divider(color: Colors.white, thickness: 2,),
                  ),
                  const Spacer(flex: 2),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
