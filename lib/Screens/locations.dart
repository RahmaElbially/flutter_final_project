
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:final_project/Screens/favourite.dart';
import 'package:final_project/Screens/my_trip.dart';
import 'package:final_project/Screens/profile.dart';
import 'package:final_project/Screens/tours.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Models/Colors/colors.dart';
import 'information_page.dart';

class Locations extends StatefulWidget {
  const Locations({Key? key}) : super(key: key);

  @override
  State<Locations> createState() => _LocationsState();
}

class _LocationsState extends State<Locations> {

  List<Widget> ListviewLocations = [
    Stack(
      children: [
        Center(
          child: Container(
            child: Image.asset("assets/images/USA.png",),
          ),
        ),
        Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 0.09.sh,),
              margin: EdgeInsets.only(bottom: 0.01.sh),
              child: Text(
                "USA   ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.sp,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 0.1.sw),
              child: Text("New York",
                style: TextStyle(
                  fontSize: 20.sp,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 0.06.sh,),
          ],
        ),
      ],
    ),

    Stack(
      children: [
        Center(
          child: Container(
            child: Image.asset("assets/images/France.png",),
          ),
        ),
        Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 0.09.sh,left: 0.1.sw),
              margin: EdgeInsets.only(bottom: 0.01.sh),
              child: Text(
                "France",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.sp,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left:0.1.sw),
              child: Text("Paris  ",
                style: TextStyle(
                  fontSize: 20.sp,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 0.06.sh,),
          ],
        ),
      ],
    ),

    Stack(
      children: [
        Center(
          child: Container(
            child: Image.asset("assets/images/India.png",),
          ),
        ),
        Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 0.09.sh,left: 0.1.sw),
              margin: EdgeInsets.only(bottom: 0.01.sh),
              child: Text(
                "India",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.sp,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 0.1.sw),
              child: Text("Agra",
                style: TextStyle(
                  fontSize: 20.sp,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 0.06.sh,),
          ],
        ),
      ],
    ),

    Stack(
      children: [
        Center(
          child: Container(
            child: Image.asset("assets/images/England.png",),
          ),
        ),
        Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 0.09.sh,left: 0.1.sw),
              margin: EdgeInsets.only(bottom: 0.01.sh),
              child: Text(
                "England",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.sp,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 0.1.sw),
              child: Text("London",
                style: TextStyle(
                  fontSize: 20.sp,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 0.06.sh,),
          ],
        ),
      ],
    ),

    Stack(
      children: [
        Center(
          child: Container(
            child: Image.asset("assets/images/Australia.png",),
          ),
        ),
        Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 0.09.sh,left: 0.09.sw),
              margin: EdgeInsets.only(bottom: 0.01.sh),
              child: Text(
                "Australia",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.sp,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 0.1.sw),
              child: Text("Sydney   ",
                style: TextStyle(
                  fontSize: 20.sp,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 0.06.sh,),
          ],
        ),
      ],
    ),
  ];

  int selectedPage = 2;
  final _pageNo = [Tours() , Favourite() , Locations() , MyTrip() , Profile() ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(0.01.sw),
            child: Container(
              width: double.infinity,
              child: Image.asset("assets/images/BGLocations.png",fit: BoxFit.fill,),
            ),
          ),
          SizedBox(height: 0.02.sh,),
          Row(
            children: [
              SizedBox(width: 0.085.sw,),
              GestureDetector(
                child: Image.asset("assets/images/Side Manu Arrow.png"),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => InformationPage()));
                },
              ),
              SizedBox(width: 0.19.sw,),
              Text(
                  "LOCATION",
                  style:
                      TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold),
                ),
            ],
          ),
          SizedBox(height: 0.034.sh,),
          Expanded(
            child: GestureDetector(
              child: ListView.builder(itemBuilder: (value,index){
                return ListviewLocations[index];
              },itemCount: ListviewLocations.length),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Tours()));
              },
            ),
          ),
          SizedBox(height: 0.085.sw,),
          ConvexAppBar(
          items: [
            TabItem(
              icon: ImageIcon(AssetImage("assets/images/home.png")),
            ),
            TabItem(
              icon: ImageIcon(AssetImage("assets/images/heart.png")),
            ),
            TabItem(
              icon: ImageIcon(AssetImage("assets/images/Icon.png")),
            ),
            TabItem(
              icon: ImageIcon(AssetImage("assets/images/Calendar.png")),
            ),
            TabItem(
              icon: ImageIcon(AssetImage("assets/images/avatar.png")),
            ),
          ],
          backgroundColor: Colors.white,
          activeColor: CustomColors.background,
          initialActiveIndex: selectedPage,
          onTap: (int index){
            setState(() {
              selectedPage = index;
              Navigator.push(context, MaterialPageRoute(builder: (context)=> _pageNo[selectedPage]));
            });
          },
            ),
        ],
      ),
    );
  }
}














