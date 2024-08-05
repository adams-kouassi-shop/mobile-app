import 'package:ecommerce/presentation/components/cart_button.dart';
import 'package:ecommerce/presentation/components/custom_modal_bottom_sheet.dart';
import 'package:ecommerce/presentation/components/network_image_with_loader.dart';
import 'package:ecommerce/presentation/components/products/product_list_tile.dart';
import 'package:ecommerce/presentation/components/products/product_quantity.dart';
import 'package:ecommerce/presentation/components/products/selected_colors.dart';
import 'package:ecommerce/presentation/components/products/selected_size.dart';
import 'package:ecommerce/presentation/components/products/unit_price.dart';
import 'package:ecommerce/presentation/const/constants.dart';
import 'package:ecommerce/presentation/screen/products/cart_screen.dart';
import 'package:ecommerce/presentation/screen/products/location_permission_store_availability_screen.dart';
import 'package:ecommerce/presentation/screen/products/size_guide_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductBuyNowScreen extends StatefulWidget {
  const ProductBuyNowScreen({super.key});

  @override
  _ProductBuyNowScreenState createState() => _ProductBuyNowScreenState();
}

class _ProductBuyNowScreenState extends State<ProductBuyNowScreen> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding / 2, vertical: defaultPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const BackButton(),
                Text("Volants sans manches", style: Theme.of(context).textTheme.titleSmall,),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset("assets/icons/Bookmark.svg", color: Theme.of(context).textTheme.bodyLarge!.color),
                ),
              ],
            ),
          ),
          Expanded(
            child: CustomScrollView(
              slivers: [
                const SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: defaultPadding),
                    child: AspectRatio(
                      aspectRatio: 1.05,
                      child: NetworkImageWithLoader('https://www.petite-entreprise.net/wp-content/uploads/2021/11/ecommerce-4.jpg'),
                    ),
                  ),
                ),
                SliverPadding(
                  padding: const EdgeInsets.all(defaultPadding),
                  sliver: SliverToBoxAdapter(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         Expanded(
                          child: UnitPrice(
                            price: 145,
                            priceAfterDiscount: 134.7*double.parse('${counter}'),
                          ),
                        ),
                        ProductQuantity(
                          numOfItem: counter,
                          onIncrement: () {
                            setState(() {
                              counter = counter+1;
                            });
                          },
                          onDecrement: () {
                           setState(() {
                             if(counter>1){
                               counter = counter-1;
                             }else{
                               counter = 1;
                             }
                           });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                const SliverToBoxAdapter(child: Divider()),
                SliverToBoxAdapter(
                  child: SelectedColors(
                    colors: const [
                      Color(0xFFEA6262),
                      Color(0xFFB1CC63),
                      Color(0xFFFFBF5F),
                      Color(0xFF9FE1DD),
                      Color(0xFFC482DB),
                    ],
                    selectedColorIndex: index_color,
                    press: (value) {
                      setState(() {
                        index_color = value;
                        print(index_color);
                      });
                    },
                  ),
                ),
                SliverToBoxAdapter(
                  child: SelectedSize(
                    sizes: array,
                    selectedIndex: index_size,
                    press: (value) {
                      setState(() {
                        index_size = value;
                      });
                    },
                  ),
                ),
                SliverPadding(
                  padding: const EdgeInsets.symmetric(vertical: defaultPadding),
                  sliver: ProductListTile(
                    title: "Guide des tailles",
                    svgSrc: "assets/icons/Sizeguid.svg",
                    isShowBottomBorder: true,
                    press: () {
                      customModalBottomSheet(
                        context,
                        height: size.height * 0.9,
                        child: const SizeGuideScreen(),
                      );
                    },
                  ),
                ),
                SliverPadding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: defaultPadding),
                  sliver: SliverToBoxAdapter(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: defaultPadding / 2),
                        Text("Disponibilité du retrait en magasin", style: Theme.of(context).textTheme.titleSmall,),
                        const SizedBox(height: defaultPadding / 2),
                        const Text("Sélectionnez une taille pour vérifier la disponibilité en magasin et les options de retrait en magasin.")
                      ],
                    ),
                  ),
                ),
                SliverPadding(
                  padding: const EdgeInsets.symmetric(vertical: defaultPadding),
                  sliver: ProductListTile(
                    title: "Vérifiez les magasins",
                    svgSrc: "assets/icons/Stores.svg",
                    isShowBottomBorder: true,
                    press: () {
                      customModalBottomSheet(
                        context,
                        height: size.height * 0.92,
                        child: const LocationPermissonStoreAvailabilityScreen(),
                      );
                    },
                  ),
                ),
                const SliverToBoxAdapter(
                    child: SizedBox(
                        height: defaultPadding
                    )
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: CartButton(
        price: 269.4,
        title: "Ajouter au panier",
        subTitle: "Prix total",
        press: () {
          setState(() {
            cartContent.add({
              'id':'id',
              'image':'image',
              'price': 'price',
              'title': 'title',
              'quantity': counter,
            });
            /* for(int i = 0; i>cartContent.length;i++){
              /*if(cartContent[i]['id'] != 1/*id*/){*/

            }*/
            print(cartContent.length);

          });
          Navigator.push(context, MaterialPageRoute(builder: (context)=>CartScreen()));
          /*customModalBottomSheet(
            context,
            isDismissible: false,
            child: const AddedToCartMessageScreen(),
          );*/
        },
      ),
    );
  }
}
