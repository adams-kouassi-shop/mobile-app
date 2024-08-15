import 'package:ecommerce/presentation/const/constants.dart';
import 'package:ecommerce/presentation/screen/profil/edit_profil_users.dart';
import 'package:flutter/material.dart';
class UserInfosScreen extends StatefulWidget {
  const UserInfosScreen({super.key});

  @override
  State<UserInfosScreen> createState() => _UserInfosScreenState();
}

class _UserInfosScreenState extends State<UserInfosScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: (){Navigator.pop(context);},
          icon: Icon(Icons.chevron_left,color: whiteColor,),
        ),
        title: Text('Profile'),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: size.height*0.25,
            decoration: BoxDecoration(
              color: whiteColor
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: primaryColor,
                      minRadius: 25.0,
                      child: Icon(Icons.call, size: 20.0),),
                    CircleAvatar(
                      backgroundColor: Colors.white70,
                      minRadius: 60.0,
                      child: CircleAvatar(
                        radius: 50.0,
                        backgroundImage:
                        AssetImage('assets/images/perfil-min.jpg'),
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: primaryColor,
                      minRadius: 25.0,
                      child: IconButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>EditProfilUsers()));
                        },
                         icon:  Icon(Icons.edit, size: 20.0)
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text('DOUMBIA ADAMA', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black,),),
              ],
            ),
          ),
          Divider(),
          Container(
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text('Nom', style: TextStyle(color: primaryColor, fontSize: 20, fontWeight: FontWeight.bold,),),
                  subtitle: Text('DOUMBIA', style: TextStyle(fontSize: 16),),
                ),
                ListTile(
                  title: Text('Prénoms', style: TextStyle(color: primaryColor, fontSize: 20, fontWeight: FontWeight.bold,),),
                  subtitle: Text('ADAMA', style: TextStyle(fontSize: 16),),
                ),
                ListTile(
                  title: Text('E-mail', style: TextStyle(color: primaryColor, fontSize: 20, fontWeight: FontWeight.bold,),),
                  subtitle: Text('palmeiro.leonardo@gmail.com', style: TextStyle(fontSize: 16),),
                ),
                ListTile(
                  title: Text('Téléphone', style: TextStyle(color: primaryColor, fontSize: 20, fontWeight: FontWeight.bold,),),
                  subtitle: Text('0545205812', style: TextStyle(fontSize: 16),),
                ),
                ListTile(
                  title: Text('Date de naissance', style: TextStyle(color: primaryColor, fontSize: 20, fontWeight: FontWeight.bold,),),
                  subtitle: Text('12/01/2021', style: TextStyle(fontSize: 16),),
                ),
                ListTile(
                  title: Text('Sexe', style: TextStyle(color: primaryColor, fontSize: 20, fontWeight: FontWeight.bold,),),
                  subtitle: Text('Homme', style: TextStyle(fontSize: 16),),
                ),
                Divider(),
              ],
            ),
          )
        ],
      ),
    );
  }
}