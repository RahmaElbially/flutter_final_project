import 'package:final_project/Screens/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Models/Colors/colors.dart';
class PageViews extends StatefulWidget {
  const PageViews({Key? key}) : super(key: key);
  @override
  State<PageViews> createState() => _GridViewsState();
}

class _GridViewsState extends State<PageViews> {
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          Stack(
            children: [
              Padding(
                  padding: EdgeInsets.all(0.02.sw),
                child: Container(
                  width: double.infinity,
                  child: Image.asset("assets/images/BackGround.png",fit: BoxFit.fill,color: Colors.black12,),
                ),
              ),
              Column(
                children: [
                  SizedBox(height: 0.08.sh,),
                  Image.asset("assets/images/Logo Color.png"),
                  SizedBox(height: 0.03.sh,),
                  Image.asset("assets/images/ImagePage1.png"),
                  SizedBox(height: 0.01.sh,),
                  Center(
                    child: Text(
                      "Plan Your Trip",
                      style:
                          TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 0.01.sh,),
                  Center(
                    child: Text(
                      "Plan your trip, choose your destination.\n Pick the best place for your holiday.",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12.sp,
                        height: 0.002.sh
                      ),
                    ),
                  ),
                  SizedBox(height: 0.025.sh,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SignIn(),),);
                        },
                        child: Text(
                          "Skip",
                          style: TextStyle(color: Colors.grey, fontSize: 17.sp),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            width: 0.018.sh,
                            height: 0.018.sh,
                            decoration: BoxDecoration(
                              color: CustomColors.background,
                              borderRadius: BorderRadius.circular(6),
                            ),
                          ),
                          SizedBox(width: 0.03.sw,),
                          Container(
                            width: 0.018.sh,
                            height: 0.018.sh,
                            decoration: BoxDecoration(
                              color: CustomColors.background.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(6),
                            ),
                          ),
                          SizedBox(width: 0.03.sw,),
                          Container(
                            width: 0.018.sh,
                            height: 0.018.sh,
                            decoration: BoxDecoration(
                              color: CustomColors.background.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(6),
                            ),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: (){
                          _pageController.animateToPage(1, duration: Duration(microseconds: 500), curve: Curves.easeIn);
                        },
                        child: Text(
                          "Next",
                          style: TextStyle(
                              color: CustomColors.background, fontSize: 17.sp),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),

          Stack(
            children: [
              Padding(
                padding: EdgeInsets.all(0.02.sw),
                child: Container(
                  width: double.infinity,
                  child: Image.asset("assets/images/BackGround.png",fit: BoxFit.fill,color: Colors.black12,),
                ),
              ),
              Column(
                children: [
                  SizedBox(height: 0.08.sh,),
                  Image.asset("assets/images/Logo Color.png"),
                  SizedBox(height: 0.03.sh,),
                  Image.asset("assets/images/ImagePage2.png"),
                  SizedBox(height: 0.01.sh,),
                  Center(
                    child: Text(
                      "Select The Date",
                      style:
                      TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 0.01.sh,),
                  Center(
                    child: Text(
                      "Select the day, book your ticket. We give. \n you the best price. We guarantied!",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12.sp,
                          height: 0.002.sh
                      ),
                    ),
                  ),
                  SizedBox(height: 0.025.sh,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SignIn(),),);
                        },
                        child: Text(
                          "Skip",
                          style: TextStyle(color: Colors.grey, fontSize: 17.sp),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            width: 0.018.sh,
                            height: 0.018.sh,
                            decoration: BoxDecoration(
                              color: CustomColors.background.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(6),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            width: 0.018.sh,
                            height: 0.018.sh,
                            decoration: BoxDecoration(
                              color: CustomColors.background,
                              borderRadius: BorderRadius.circular(6),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            width: 0.018.sh,
                            height: 0.018.sh,
                            decoration: BoxDecoration(
                              color: CustomColors.background.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(6),
                            ),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: (){
                          _pageController.animateToPage(2, duration: Duration(microseconds: 500), curve: Curves.easeIn);
                        },
                        child: Text(
                          "Next",
                          style: TextStyle(
                              color: CustomColors.background, fontSize: 17.sp),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),

          Stack(
            children: [
              Padding(
                padding: EdgeInsets.all(0.02.sw),
                child: Container(
                  width: double.infinity,
                  child: Image.asset("assets/images/BackGround.png",fit: BoxFit.fill,color: Colors.black12,),
                ),
              ),
              Column(
                children: [
                  SizedBox(height: 0.08.sh,),
                  Image.asset("assets/images/Logo Color.png"),
                  SizedBox(height: 0.018.sh,),
                  Image.asset("assets/images/ImagePage3.png"),
                  SizedBox(height:0.018.sh,),
                  Center(
                    child: Text(
                      "Enjoy Your Trip",
                      style:
                      TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 0.01.sh,),
                  Center(
                    child: Text(
                      "Enjoy your holiday! don't forget to take \n a photo and share to the world.",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12.sp,
                          height: 0.002.sh
                      ),
                    ),
                  ),
                  SizedBox(height: 0.015.sh,),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SignIn(),),);
                    },
                    child: Text(
                      "LET'S GO",
                      style: TextStyle(
                        color: CustomColors.background,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.sp,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}






