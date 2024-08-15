import 'package:ecommerce/presentation/const/constants.dart';
import 'package:flutter/material.dart';
class EditProfilUsers extends StatefulWidget {
  const EditProfilUsers({super.key});

  @override
  State<EditProfilUsers> createState() => _EditProfilUsersState();
}

class _EditProfilUsersState extends State<EditProfilUsers> {
  TextEditingController _namehere = TextEditingController();

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
        title: Text('Modifier mon profil'),
        centerTitle: true,
      ),
      body: ListView(
        physics: PageScrollPhysics(),
        children: [
          Container(
            height: size.height*0.2,
            decoration: BoxDecoration(
                color: whiteColor
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.white70,
                      minRadius: 60.0,
                      child: CircleAvatar(
                        radius: 50.0,
                        backgroundImage:
                        AssetImage('assets/images/perfil-min.jpg'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.only(left: 12.0,right: 12),
            child: SizedBox(
              height: size.height *0.07,
              width: size.width *0.65,
              child: TextFormField(
                controller: _namehere,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      ),
                    ),
                    suffixIcon: Icon(Icons.person),
                    labelText: 'Nom',
                    hintText: "Nom"
                ),
                keyboardType: TextInputType.text,
                obscureText: false,
              ),
            ),
          ),
          SizedBox(height: defaultPadding),
          Padding(
            padding: const EdgeInsets.only(left: 12.0,right: 12),
            child: SizedBox(
              height:MediaQuery.of(context).size.height *0.07,
              width: size.width *0.65,
              child: TextFormField(
                controller: _namehere,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      ),
                    ),
                    suffixIcon: Icon(Icons.person),
                    labelText: 'Prénoms',
                    hintText: "Prénoms"

                ),
                keyboardType: TextInputType.text,
                obscureText: false,
              ),
            ),
          ),
          SizedBox(height: defaultPadding,),
          Padding(
            padding: const EdgeInsets.only(left: 12.0,right: 12),
            child: SizedBox(
              height:MediaQuery.of(context).size.height *0.07,
              width: size.width *0.65,
              child: TextFormField(
                controller: _namehere,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      ),
                    ),
                    suffixIcon: Icon(Icons.email),
                    labelText: 'E-mail',
                    hintText: "E-mail"
                ),
                keyboardType: TextInputType.emailAddress,
                obscureText: false,
              ),
            ),
          ),
          SizedBox(height: defaultPadding),
          Padding(
            padding: const EdgeInsets.only(left: 12.0,right: 12),
            child: SizedBox(
              height:MediaQuery.of(context).size.height *0.07,
              width: size.width *0.65,
              child: TextFormField(
                controller: _namehere,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      ),
                    ),
                    suffixIcon: Icon(Icons.call),
                    labelText: 'Téléphone',
                    hintText: "Téléphone"
                ),
                keyboardType: TextInputType.emailAddress,
                obscureText: false,
              ),
            ),
          ),
          SizedBox(height: defaultPadding),
          Padding(
            padding: const EdgeInsets.only(left: 12.0,right: 12),
            child: SizedBox(
              height:MediaQuery.of(context).size.height *0.07,
              width: size.width *0.65,
              child: TextFormField(
                controller: _namehere,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      ),
                    ),
                    suffixIcon: Icon(Icons.call),
                    labelText: 'Sexe',
                    hintText: "Sexe"
                ),
                keyboardType: TextInputType.text,
                obscureText: false,
              ),
            ),
          ),
          SizedBox(height: defaultPadding),
          Padding(
            padding: const EdgeInsets.only(left: 12.0,right: 12),
            child: SizedBox(
              height:MediaQuery.of(context).size.height *0.07,
              width: size.width *0.65,
              child: TextFormField(
                controller: _namehere,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      ),
                    ),
                    suffixIcon: Icon(Icons.timer),
                    labelText: 'Date de naissance',
                    hintText: "Date de naissance"
                ),
                keyboardType: TextInputType.datetime,
                obscureText: false,
              ),
            ),
          ),
          SizedBox(height: defaultPadding,),

          Padding(
            padding: const EdgeInsets.only(left: 20.0,right: 20),
            child: InkWell(
              child: Container(
                height: size.height *0.06,
                width: size.width *0.42,
                decoration: const BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.only(
                      // bottomLeft: Radius.circular(22.0),
                        topLeft: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0)
                    )
                ),
                child: const Center(child: Text('Mettre à jour',style: TextStyle(fontSize: 20.0,color: Colors.white),)),
              ),
              onTap: (){},
            ),
          )
        ],
      ),
    );
  }
}
