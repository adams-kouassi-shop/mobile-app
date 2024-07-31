import 'package:flutter/material.dart';
import 'banner_m.dart';

import '../../../constants.dart';

class BannerMStyle1 extends StatelessWidget {
  const BannerMStyle1({super.key, required this.image, required this.text, required this.press,});
  final String? image;
  final String text;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return  AspectRatio(
      aspectRatio: 1.87,
      child: GestureDetector(
        onTap: press,
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(image!)
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
                    child: Text(text, style: const TextStyle(fontFamily: grandisExtendedFont, fontWeight: FontWeight.w600, fontSize: 24, color: Colors.white,
                    ),
                    ),
                  ),
                  const Spacer(),
                  const Text("", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600,),),
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
