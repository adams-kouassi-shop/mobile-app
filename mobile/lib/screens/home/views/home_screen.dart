import 'package:flutter/material.dart';
import 'package:shop/constants.dart';
import 'components/best_sellers.dart';
import 'components/flash_sale.dart';
import 'components/most_popular.dart';
import 'components/offer_carousel_and_categories.dart';
import 'components/popular_products.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
                child: OffersCarouselAndCategories()
            ),
            /////////////// produits recents
            const SliverToBoxAdapter(
                child: PopularProducts()
            ),
            const SliverPadding(
              padding: EdgeInsets.symmetric(vertical: defaultPadding * 1.5),
              sliver: SliverToBoxAdapter(
                  child: FlashSale()
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  // While loading use 👇
                  // const BannerMSkelton(),‚
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
                            Text("Meilleure venntes", style: Theme.of(context).textTheme.titleSmall,),
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
                  // We have 4 banner styles, all in the pro version
                ],
              ),
            ),
            /////////////// meilleure vente
            const SliverToBoxAdapter(
                child: BestSellers()
            ),

            //////////////////// vus recemment
            SliverToBoxAdapter(
                child: MostPopular()
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  SizedBox(height: defaultPadding * 1.5),
                  // While loading use 👇
                  // const BannerSSkelton(),
                ],
              ),
            ),
            ////////// meilleure categorie
            SliverToBoxAdapter(
                child: BestCategorie()
            ),
          ],
        ),
      ),
    );
  }
}


