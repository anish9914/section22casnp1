import 'dart:async';

import 'package:flutter/material.dart';
import 'package:section22casnp/mainScreens/main_screen.dart';

class MySplashScreen extends StatefulWidget {

  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen > {
  
  startTimer()
  {
    Timer(Duration (seconds: 60), ()async
        {
          ////send user to main-screen
        Navigator.push(context, MaterialPageRoute(builder: (c) => MainScreen()));
        
        });
  }


  @override
  void initState() {

    super.initState();

    startTimer();
  }


  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.black,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("images/logo1.png"),

                SizedBox(
                  height: 10,
                ),

                Text("Taxi App",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
               )),
            ],
          ),
        ),
      ),
    );
  }
}
