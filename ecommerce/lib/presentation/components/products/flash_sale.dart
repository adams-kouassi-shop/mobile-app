import 'package:ecommerce/domain/models/product_model.dart';
import 'package:ecommerce/presentation/components/products/product_card.dart';
import 'package:ecommerce/presentation/const/constants.dart';
import 'package:flutter/material.dart';

class FlashSale extends StatelessWidget {
  const FlashSale({super.key,});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // While loading show 👇
        // const BannerMWithCounterSkelton(),
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
                  Text("Ventes Flash", style: Theme.of(context).textTheme.titleSmall,),
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
        // While loading show 👇
        // const ProductsSkelton(),
        SizedBox(
          height: 220,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            // Find demoFlashSaleProducts on models/ProductModel.dart
            itemCount: demoFlashSaleProducts.length,
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.only(left: defaultPadding, right: index == demoFlashSaleProducts.length - 1 ? defaultPadding : 0,),
              child: ProductCard(
                image: demoFlashSaleProducts[index].image,
                brandName: demoFlashSaleProducts[index].brandName,
                title: demoFlashSaleProducts[index].title,
                price: demoFlashSaleProducts[index].price,
                priceAfetDiscount:
                    demoFlashSaleProducts[index].priceAfetDiscount,
                dicountpercent: demoFlashSaleProducts[index].dicountpercent,
                press: () {},
              ),
            ),
          ),
        ),
      ],
    );
  }
}
