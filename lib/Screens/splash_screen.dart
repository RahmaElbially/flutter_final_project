import 'dart:async';
import 'package:final_project/Screens/page_views.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Models/Colors/colors.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => PageViews(),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.all(0.01.sw),
            child: Container(
              width: double.infinity,
              child: Image.asset("assets/images/BackGround.png",fit: BoxFit.fill,),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    CustomColors.background,
                    CustomColors.cyanAcent,
                  ],
                ),
              ),
            ),
          ),
          Container(
            child:
            Image.asset("assets/images/Logo White.png",),
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }
}

