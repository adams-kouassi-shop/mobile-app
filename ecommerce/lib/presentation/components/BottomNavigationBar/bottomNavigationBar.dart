import 'package:ecommerce/presentation/const/constants.dart';
import 'package:ecommerce/presentation/screen/boutique/boutique_screen.dart';
import 'package:ecommerce/presentation/screen/home_screen.dart';
import 'package:ecommerce/presentation/screen/products/cart_screen.dart';
import 'package:ecommerce/presentation/screen/products/categories/discover_screen.dart';
import 'package:ecommerce/presentation/screen/profil/profil_screen.dart';
import 'package:flutter/material.dart';



class bottomNavigationBar extends StatefulWidget {
   bottomNavigationBar({super.key, required this.selectedIndex});
int selectedIndex;
  @override
  State<bottomNavigationBar> createState() => _bottomNavigationBarState();
}

class _bottomNavigationBarState extends State<bottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0,
        currentIndex: widget.selectedIndex,
        onTap: (value) {
          setState(() {
            widget.selectedIndex = value;
            if(value==0){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> HomeScreen()));
            }
            if(value==1){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> DiscoverScreen()));
            }
            if(value==2){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> BoutiqueScreen()));
            }
            if(value==3){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const CartScreen()));
            }
            if(value==4){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> ProfilScreen()));
            }
          });
        },
      backgroundColor: whiteColor,
      type: BottomNavigationBarType.shifting,
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
    );
  }
}



