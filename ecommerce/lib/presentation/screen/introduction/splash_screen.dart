import 'dart:async';

import 'package:ecommerce/presentation/screen/home_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _Sp_Screen_2_OutputState createState() => _Sp_Screen_2_OutputState();
}

class _Sp_Screen_2_OutputState extends State<SplashScreen> with SingleTickerProviderStateMixin{
  late Animation<double> animation;

  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        duration:  Duration(seconds: 2),
        vsync: this);
    final CurvedAnimation curve = CurvedAnimation(parent: _controller, curve: Curves.ease);
    animation = Tween(begin: 2.0, end: 0.2).animate(curve);
    animation.addStatusListener((AnimationStatus status) {
      if (status == AnimationStatus.completed) {
        _controller.reverse();
        setState(() {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
        });
      } else if (status == AnimationStatus.dismissed) {
        _controller.forward();
      }
    });
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Theme.of(context).colorScheme.primary,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: FadeTransition(
          opacity: animation,
          child: Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://image.pngaaa.com/25/191025-middle.png'),
                fit: BoxFit.contain
              )
            ),
          )
        ));
  }
}
