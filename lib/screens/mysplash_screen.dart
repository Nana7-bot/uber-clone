import 'dart:async';

import 'package:flutter/material.dart';
import 'package:uber_clone_driver/screens/login_screen.dart';
import 'package:uber_clone_driver/screens/main_screen.dart';
import 'package:uber_clone_driver/screens/signup_screen.dart';


class MySplashScreen extends StatefulWidget {
  const MySplashScreen({Key? key}) : super(key: key);

  @override
  _MySplashScreenState createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {

  setTimer() {
    Timer(const Duration(seconds: 5), () async{
      Navigator.push(context, MaterialPageRoute(
          builder: (context)=> const LoginScreen()
       )
      );
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    setTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/logo1.png'),
            const SizedBox(height: 10),
            const Text('Uber Clone App', style: TextStyle(fontSize: 30,
                fontWeight: FontWeight.bold, color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
