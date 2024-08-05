import 'package:ecommerce/presentation/components/home/offers_carousel.dart';
import 'package:ecommerce/presentation/components/products/categories.dart';
import 'package:ecommerce/presentation/const/constants.dart';
import 'package:flutter/material.dart';


class OffersCarouselAndCategories extends StatelessWidget {
  const OffersCarouselAndCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // While loading use 👇
        // const OffersSkelton(),
        const OffersCarousel(),
       // const SizedBox(height: defaultPadding / 8),
        Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: Text("Categories", style: Theme.of(context).textTheme.titleSmall,),
        ),
        // While loading use 👇
        // const CategoriesSkelton(),
        const Categories(),
      ],
    );
  }
}
