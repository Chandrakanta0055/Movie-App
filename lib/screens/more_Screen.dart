import 'package:flutter/material.dart';

class more_Screen extends StatefulWidget {
  const more_Screen({super.key});

  @override
  State<more_Screen> createState() => _more_ScreenState();
}

class _more_ScreenState extends State<more_Screen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "More Screen"
      ),
    );
  }
}
