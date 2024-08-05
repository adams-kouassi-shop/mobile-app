import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop/constants.dart';
import 'package:shop/route/screen_export.dart';
import 'package:shop/screens/order/views/adress_screen.dart';
import 'package:shop/screens/product/views/list_envie_screen.dart';
import 'package:shop/screens/order/views/ordered_screen.dart';
import 'package:shop/screens/product/views/note_screen.dart';

import 'components/profile_card.dart';
import 'components/profile_menu_item_list_tile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: ListView(
        children: [
          ProfileCard(
            name: "DOUMBIA ADAMA",
            email: "adama.doumbia@uvci.edu.Ci",
            imageSrc: "https://i.pinimg.com/1200x/dc/91/35/dc9135a05daad7049e4c2ad3462ca9ec.jpg",
            // proLableText: "Sliver",
            // isPro: true, if the user is pro
            press: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>UserInfoScreen()));
            },
          ),
          /*Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding, vertical: defaultPadding * 1.5),
            child: GestureDetector(
              onTap: () {},
              child: const AspectRatio(
                aspectRatio: 1.8,
                child:
                    NetworkImageWithLoader("https://i.pinimg.com/1200x/dc/91/35/dc9135a05daad7049e4c2ad3462ca9ec.jpg"),
              ),
            ),
          ),*/
          SizedBox(height: defaultPadding),
          Divider(color: greyColor,),
          Container(
            width: size.width,
            decoration: BoxDecoration(
              color: lightGreyColor,
            ),
            padding: EdgeInsets.all(12),
              child: Text("Mon compte .......", style: Theme.of(context).textTheme.titleSmall,)
          ),

          SizedBox(height: defaultPadding / 2),
          ProfileMenuListTile(
            text: "Mes commandes",
            svgSrc: "assets/icons/Return.svg",
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> OrderedScreen()));
            },
            isShowDivider: false,
          ),
          ProfileMenuListTile(
            text: "Ma liste d'envie",
            svgSrc: "assets/icons/Wishlist.svg",
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ListEnvieScreen()));
            },
            isShowDivider: false,
          ),
          ProfileMenuListTile(
            text: "Notes et avis",
            svgSrc: "assets/icons/Like.svg",
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>(NoteScreen())));
            },
          ),
          /*ProfileMenuListTile(
            text: "Payment",
            svgSrc: "assets/icons/card.svg",
            press: () {
              Navigator.pushNamed(context, emptyPaymentScreenRoute);
            },
          ),
          ProfileMenuListTile(
            text: "Wallet",
            svgSrc: "assets/icons/Wallet.svg",
            press: () {
              Navigator.pushNamed(context, walletScreenRoute);
            },
          ),*/
          SizedBox(height: defaultPadding),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: defaultPadding, vertical: defaultPadding / 2),
            child: Text("Paramètres", style: Theme.of(context).textTheme.titleSmall,),
          ),
          ProfileMenuListTile(
            text: "Langue",
            svgSrc: "assets/icons/Language.svg",
            press: () {},
            isShowDivider: false,
          ),
          ProfileMenuListTile(
            text: "Notification",
            svgSrc: "assets/icons/Notification.svg",
            press: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>NoNotificationScreen()));
            },
            isShowDivider: false,
          ),
          ProfileMenuListTile(
            text: "Adresse",
            svgSrc: "assets/icons/Location.svg",
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>AdressScreen()));
            },
            isShowDivider: true,
          ),
          SizedBox(height: defaultPadding),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: defaultPadding, vertical: defaultPadding / 2),
            child: Text("Politique de confidentialité", style: Theme.of(context).textTheme.titleSmall,),
          ),
          ProfileMenuListTile(
            text: "Aide",
            svgSrc: "assets/icons/Help.svg",
            press: () {},
            isShowDivider: false,
          ),
          ProfileMenuListTile(
            text: "FAQ",
            svgSrc: "assets/icons/FAQ.svg",
            press: () {},
            isShowDivider: true,
          ),
          SizedBox(height: defaultPadding),

          // Log Out
          ListTile(
            onTap: () {},
            minLeadingWidth: 24,
            leading: SvgPicture.asset(
              "assets/icons/Logout.svg",
              height: 24,
              width: 24,
              colorFilter: const ColorFilter.mode(
                errorColor,
                BlendMode.srcIn,
              ),
            ),
            title: const Text("Se déconnecter", style: TextStyle(color: errorColor, fontSize: 14, height: 1),),
          )
        ],
      ),
    );
  }
}
