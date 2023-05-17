import 'dart:async';

import 'package:digitalwallet/homescreen.dart';
import 'package:digitalwallet/navbar/bottomnavbar.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Digital Wallet',
      home: SplashScreen(),

      // make black background in the whole app
      // theme: ThemeData(
      //   brightness: Brightness.dark,
      //   primaryColor: Colors.black,
      // ),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const BottomNavBar()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 24, 177, 29),
      body: Center(
        child: Image(image: AssetImage('assets/images/esewalogo.png')),
      ),
    );
  }
}
