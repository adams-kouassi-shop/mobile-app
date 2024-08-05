import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop/constants.dart';
import 'package:shop/route/screen_export.dart';
import 'package:shop/screens/boutique/views/boutique_screen.dart';
import 'package:shop/screens/categories/views/discover_screen.dart';

class EntryPoint extends StatefulWidget {
  const EntryPoint({super.key});

  @override
  State<EntryPoint> createState() => _EntryPointState();
}

class _EntryPointState extends State<EntryPoint> {
  final List _pages = const [
    HomeScreen(),
    DiscoverScreen(),
    BoutiqueScreen(),
    // EmptyCartScreen(), // if Cart is empty
    CartScreen(),
    ProfileScreen(),
  ];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    SvgPicture svgIcon(String src, {Color? color}) {
      return SvgPicture.asset(src, height: 24,
        colorFilter: ColorFilter.mode(color ?? Theme.of(context).iconTheme.color!.withOpacity(Theme.of(context).brightness == Brightness.dark ? 0.3 : 1), BlendMode.srcIn),);
    }

    return Scaffold(
      appBar: AppBar(
        // pinned: true,
        // floating: true,
        // snap: true,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        leading: const SizedBox(),
        leadingWidth: 0,
        centerTitle: false,
        title: SvgPicture.asset("assets/logo/Shoplon.svg", colorFilter: ColorFilter.mode(Theme.of(context).iconTheme.color!, BlendMode.srcIn), height: 20, width: 100,),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, searchScreenRoute);
            },
            icon: SvgPicture.asset("assets/icons/Search.svg", height: 24, colorFilter: ColorFilter.mode(Theme.of(context).textTheme.bodyLarge!.color!, BlendMode.srcIn),),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>NoNotificationScreen()));
            },
            icon: SvgPicture.asset("assets/icons/Notification.svg",
              height: 24,
              colorFilter: ColorFilter.mode(Theme.of(context).textTheme.bodyLarge!.color!, BlendMode.srcIn),),
          ),
        ],
      ),
      // body: _pages[_currentIndex],
      body: PageTransitionSwitcher(
        duration: defaultDuration,
        transitionBuilder: (child, animation, secondAnimation) {
          return FadeThroughTransition(
            animation: animation,
            secondaryAnimation: secondAnimation,
            child: child,
          );
        },
        child: _pages[_currentIndex],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(top: defaultPadding / 2),
        color: whiteColor,
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            if (index != _currentIndex) {
              setState(() {
                _currentIndex = index;
              });
            }
          },
          backgroundColor: whiteColor,
          type: BottomNavigationBarType.fixed,
          selectedLabelStyle: TextStyle(color: primaryColor),
          selectedFontSize: 12,
          selectedItemColor: primaryColor,
          unselectedItemColor: Colors.transparent,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home,color: whileColor40,size: 30,),
              activeIcon: Icon(Icons.home,color: primaryColor,size: 30,),
              label: "Accueil",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list,color: whileColor40,size: 30,),
              activeIcon: Icon(Icons.list,color: primaryColor,size: 30,),
              label: "Catégories",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.store,color: whileColor40,size: 30,),
              activeIcon: Icon(Icons.store,color: primaryColor,size: 30,),
              label: "Boutiques",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart,color: whileColor40,size: 30,),
              activeIcon: Icon(Icons.shopping_cart,color: primaryColor,size: 30,),
              label: "Panier",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person,color: whileColor40,size: 30,),
              activeIcon: Icon(Icons.person,color: primaryColor,size: 30,),
              label: "Mon compte",
            ),
          ],
        ),
      ),
    );
  }
}
