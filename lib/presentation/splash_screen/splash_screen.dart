import "dart:async";

import "package:flutter/material.dart";
import "package:flutter_1/presentation/sign_up_screen/sign_up_screen.dart";


class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => SignUpScreen()),
      );
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 255, 255, 255),
        child: Center(
            child: Image(
          image: AssetImage('assets/image 29.png'),
        )),
      ),
    );
  }
}
