import 'package:ecommerce/presentation/const/constants.dart';
import 'package:flutter/material.dart';


class CartButton extends StatelessWidget {
  const CartButton({
    super.key,
    required this.price,
    this.title = "Acheter maintenant",
    this.subTitle = "Prix unitaire",
    required this.press,
  });

  final double price;
  final String title, subTitle;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding, vertical: defaultBorderRadious / 2),
        child: SizedBox(
          height: 64,
          child: Material(
            color: primaryColor,
            clipBehavior: Clip.hardEdge,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(defaultBorderRadious),
              ),
            ),
            child: InkWell(
              onTap: press,
              child: Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: defaultPadding),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("\$${counter*double.parse('${price.toStringAsFixed(2)}')}", style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.white),),
                          Text(subTitle, style: const TextStyle(color: whiteColor, fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      padding: EdgeInsets.all(6),
                      alignment: Alignment.center,
                      height: double.infinity,
                      color: Colors.black.withOpacity(0.15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Acheter',style: TextStyle(color: whiteColor,fontWeight: FontWeight.bold),),
                          Icon(Icons.shopping_cart,size: 34,color: whiteColor,),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
