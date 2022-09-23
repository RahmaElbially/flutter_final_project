import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:final_project/Screens/profile.dart';
import 'package:final_project/Screens/tours.dart';
import 'package:flutter/material.dart';

import '../Models/Colors/colors.dart';
import 'favourite.dart';
import 'locations.dart';
import 'my_trip.dart';

class MyTrip extends StatefulWidget {
  const MyTrip({Key? key}) : super(key: key);

  @override
  State<MyTrip> createState() => _ToursState();
}

class _ToursState extends State<MyTrip> {

  int selectedPage = 3;
  final _pageNo = [Tours() , Favourite() , Locations() , MyTrip() , Profile() ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(child: Text("MyTrip")),
          ),
        ],
      ),
      bottomNavigationBar: ConvexAppBar(
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
    );
  }
}


