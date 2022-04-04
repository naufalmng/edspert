import 'dart:async';
import 'package:edspert/ui/login_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);


  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  goToNextScreen(){
    Timer(const Duration(
      seconds: 1
    ),(){
      Navigator.of(context).push(
        MaterialPageRoute(builder: ((context) => const LoginScreen()),
      ));
    });
  }

  @override
  void initState() {
    super.initState();
    goToNextScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('assets/images/png/ic_splash.png',
        width: MediaQuery.of(context).size.width * 0.45),
      ),
      backgroundColor: Colors.purple,
    );
  }
}
