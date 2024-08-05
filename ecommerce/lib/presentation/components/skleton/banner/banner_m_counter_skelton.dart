import 'package:ecommerce/presentation/components/skleton/skelton.dart';
import 'package:ecommerce/presentation/const/constants.dart';
import 'package:flutter/material.dart';



class BannerMWithCounterSkelton extends StatelessWidget {
  const BannerMWithCounterSkelton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.87,
      child: Stack(
        children: [
           Skeleton(radious: 0),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Skeleton(
                width: 200,
                height: 24,
              ),
              const SizedBox(height: defaultPadding / 2),
               Skeleton(
                width: 160,
                height: 24,
              ),
              const SizedBox(height: defaultPadding),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  3,
                  (_) => const Padding(
                    padding: EdgeInsets.only(right: defaultPadding / 2),
                    child: Skeleton(
                      height: 40,
                      width: 40,
                      radious: defaultPadding / 2,
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
