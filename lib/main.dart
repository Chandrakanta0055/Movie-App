import 'package:flutter/material.dart';
import 'package:my_movies/screens/splash_screens.dart';


void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: "Netflix",
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: TextTheme(
          bodyLarge: TextStyle(
            color: Colors.white,
                fontSize: 24
          ),
          bodyMedium: TextStyle(color: Colors.white,fontSize:20 )
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple).copyWith(
          background: Colors.black
        ),
        fontFamily:"Roboto" ,
        useMaterial3: true,

      ),
      home: Splash_Screen() ,
    );
  }
}

