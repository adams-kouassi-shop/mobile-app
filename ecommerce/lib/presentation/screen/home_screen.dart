import 'package:ecommerce/presentation/components/BottomNavigationBar/bottomNavigationBar.dart';
import 'package:ecommerce/presentation/components/home/offer_carousel_and_categories.dart';
import 'package:ecommerce/presentation/components/products/best_sellers.dart';
import 'package:ecommerce/presentation/components/products/flash_sale.dart';
import 'package:ecommerce/presentation/components/products/most_popular.dart';
import 'package:ecommerce/presentation/components/products/popular_products.dart';
import 'package:ecommerce/presentation/const/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    int _currentIndex = 0;
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        elevation: 0,
        leading: SizedBox(),
        leadingWidth: 0,
        centerTitle: false,
        title: SvgPicture.asset("assets/icons/Search.svg", colorFilter: ColorFilter.mode(Theme.of(context).iconTheme.color!, BlendMode.srcIn), height: 20, width: 100,),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/Search.svg", height: 24, colorFilter: ColorFilter.mode(Theme.of(context).textTheme.bodyLarge!.color!, BlendMode.srcIn),),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/Notification.svg",
              height: 24,
              colorFilter: ColorFilter.mode(Theme.of(context).textTheme.bodyLarge!.color!, BlendMode.srcIn),),
          ),
        ],
      ),
      body:ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Column(
              children: [
                ///////// caroussel and catégoies
                OffersCarouselAndCategories(),

                /////////// produit recents
                PopularProducts(),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: FlashSale(),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Column(
                    children: [
                      // const BannerMSkelton(),‚
                      Container(
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
                      BestSellers()
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Column(
                    children: [
                      // const BannerSSkelton(),
                      MostPopular()
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Column(
                    children: [
                      // const BannerSSkelton(),
                      BestCategorie(),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: bottomNavigationBar(selectedIndex: 0,),
    );
  }
}
