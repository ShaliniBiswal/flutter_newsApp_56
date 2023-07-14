import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 380,
              ),
              // Image.asset("images/mlogo.png", height: 240, width: 240),
              Text(
                "News App",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "The news is on the way",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 30),
              SpinKitPulsingGrid(
                color: Colors.white,
                size: 80.0,
                duration: Duration(seconds: 4),
                boxShape: BoxShape.circle,
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 118, 41, 36),
    );
  }
}
