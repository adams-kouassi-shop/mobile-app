import 'package:flutter/material.dart';
import 'package:shop/components/product/product_card.dart';
import 'package:shop/models/product_model.dart';
import 'package:shop/screens/product/views/product_details_screen.dart';

import '../../../../constants.dart';
import '../../../../route/route_constants.dart';

class BestSellers extends StatelessWidget {
  const BestSellers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: defaultPadding / 2),
        // While loading use 👇
        // const ProductsSkelton(),
        SizedBox(
          height: 220,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            // Find demoBestSellersProducts on models/ProductModel.dart
            itemCount: demoBestSellersProducts.length,
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.only(left: defaultPadding, right: index == demoBestSellersProducts.length - 1 ? defaultPadding : 0,),
              child: ProductCard(
                image: demoBestSellersProducts[index].image,
                brandName: demoBestSellersProducts[index].brandName,
                title: demoBestSellersProducts[index].title,
                price: demoBestSellersProducts[index].price,
                priceAfetDiscount:
                    demoBestSellersProducts[index].priceAfetDiscount,
                dicountpercent: demoBestSellersProducts[index].dicountpercent,
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

class BestCategorie extends StatelessWidget {
  const BestCategorie({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: defaultPadding / 2),
        // While loading use 👇
        // const ProductsSkelton(),
        Padding(
          padding: const EdgeInsets.all(2),
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
                  Text("Nos meilleures catégories", style: Theme.of(context).textTheme.titleSmall,),
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
        SizedBox(
          height: 220,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            // Find demoBestSellersProducts on models/ProductModel.dart
            itemCount: demoBestSellersProducts.length,
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.only(left: defaultPadding, right: index == demoBestSellersProducts.length - 1 ? defaultPadding : 0,),
              child: ProductCard(
                image: demoBestSellersProducts[index].image,
                brandName: demoBestSellersProducts[index].brandName,
                title: demoBestSellersProducts[index].title,
                price: demoBestSellersProducts[index].price,
                priceAfetDiscount:
                    demoBestSellersProducts[index].priceAfetDiscount,
                dicountpercent: demoBestSellersProducts[index].dicountpercent,
                press: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductDetailsScreen(isProductAvailable: index.isEven,)));
                },
              ),
            ),
          ),
        )
      ],
    );
  }
}
