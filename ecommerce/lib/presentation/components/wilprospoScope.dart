import 'dart:io';

import 'package:ecommerce/presentation/const/constants.dart';
import 'package:flutter/material.dart';

Future<bool> showExitPopup(BuildContext context) async{
  Size size = MediaQuery.sizeOf(context);
  return await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: SizedBox(
            height: size.height*0.16,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Voulez-vous sortir de l'application ?",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold),),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          print('yes selected');
                          exit(0);
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: primaryColor),
                        child: const Text("Oui",style: TextStyle(color: whiteColor,fontWeight: FontWeight.bold),),
                      ),
                    ),
                    const SizedBox(width: 15),
                    Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            print('no selected');
                            Navigator.of(context).pop();
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: blackColor,
                          ),
                          child: const Text("Non", style: TextStyle(color: whiteColor,fontWeight: FontWeight.bold),),
                        ))
                  ],
                )
              ],
            ),
          ),
        );
      });
}