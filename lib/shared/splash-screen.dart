import 'dart:async';
import 'package:flutter/material.dart';
import 'package:untitled1/module/login/loginScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
     Timer(Duration(seconds: 5), (){
       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
     });

  }
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/splash.png'),
            fit: BoxFit.cover,

          )
        ),
    );
  }
}
