import 'dart:async';
import 'dart:convert';

import 'package:animated_wb_splash_screen/animated_wb_splash_screen.dart';
import 'package:ecommerce/presentation/const/constants.dart';
import 'package:ecommerce/presentation/screen/introduction/introduction_screen.dart';
import 'package:ecommerce/presentation/screen/introduction/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future <void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final bool runCupertinoApp = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    if (runCupertinoApp) {
      return CupertinoApp(
        debugShowCheckedModeBanner: false,
        localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
          DefaultMaterialLocalizations.delegate,
          DefaultWidgetsLocalizations.delegate,
          DefaultCupertinoLocalizations.delegate,
        ],
        title: 'Flutter Demo',
        home:  Container(),
      );
    }
    else{
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        useInheritedMediaQuery: true,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
          useMaterial3: false ,
          primaryColor: primaryColor,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        title: 'Mayacred app',
        home: SplashScreen(),
      );
    }
  }
}