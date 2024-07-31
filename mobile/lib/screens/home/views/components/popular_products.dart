import 'package:flutter/material.dart';
import 'package:shop/components/product/product_card.dart';
import 'package:shop/constants.dart';
import 'package:shop/models/product_model.dart';
import 'package:shop/route/screen_export.dart';


class PopularProducts extends StatelessWidget {
  const PopularProducts({super.key,});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: defaultPadding / 2),
        Padding(
          padding: const EdgeInsets.only(top: 20,left: 2,right: 2,),
          child: Container(
              width: size.width,
              height: 50,
              padding: EdgeInsets.only(left: 12,right: 12),
              decoration: BoxDecoration(
                  color: warningColor
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Produits récents", style: Theme.of(context).textTheme.titleSmall,),
                  TextButton(
                      onPressed: null,
                      child: Row(
                        children: [
                          Text('Voir plus',style: Theme.of(context).textTheme.titleSmall,),
                          Icon(Icons.chevron_right,color: blackColor,)
                        ],
                      )
                  )
                ],
              )
          ),
        ),
        // While loading use 👇
        // const ProductsSkelton(),
        SizedBox(
          height: 220,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            // Find demoPopularProducts on models/ProductModel.dart
            itemCount: demoPopularProducts.length,
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.only(left: defaultPadding, right: index == demoPopularProducts.length - 1 ? defaultPadding : 0,),
              child: ProductCard(
                image: demoPopularProducts[index].image,
                brandName: demoPopularProducts[index].brandName,
                title: demoPopularProducts[index].title,
                price: demoPopularProducts[index].price,
                priceAfetDiscount: demoPopularProducts[index].priceAfetDiscount,
                dicountpercent: demoPopularProducts[index].dicountpercent,
                press: () {
                  Navigator.pushNamed(context, productDetailsScreenRoute, arguments: index.isEven);
                },
              ),
            ),
          ),
        )
      ],
    );
  }
}
