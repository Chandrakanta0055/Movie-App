import 'dart:async';

import 'package:flutter/material.dart';

import 'BottonNavBar.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({super.key});

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>BottonNavBar() ));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
    child: Image.asset("assets/img_1.png")
    );
  }
}
