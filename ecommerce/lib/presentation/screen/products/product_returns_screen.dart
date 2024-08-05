import 'package:ecommerce/presentation/const/constants.dart';
import 'package:flutter/material.dart';


class ProductReturnsScreen extends StatelessWidget {
  const ProductReturnsScreen({super.key,required this.titre,required this.message});
  final titre;
  final message;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: defaultPadding),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: defaultPadding / 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    width: 40,
                    child: BackButton(),
                  ),
                  Text("${titre}", style: Theme.of(context).textTheme.titleSmall,),
                  const SizedBox(width: 40),
                ],
              ),
            ),
             Padding(
              padding: EdgeInsets.all(defaultPadding),
              child: Text("${message}",),
            )
          ],
        ),
      ),
    );
  }
}
