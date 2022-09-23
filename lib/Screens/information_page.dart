import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:final_project/Screens/profile.dart';
import 'package:final_project/Screens/sign_in.dart';
import 'package:final_project/Screens/tours.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Models/Colors/colors.dart';
import 'favourite.dart';
import 'locations.dart';
import 'my_trip.dart';
class InformationPage extends StatefulWidget {
  const InformationPage({Key? key}) : super(key: key);

  @override
  State<InformationPage> createState() => _InformationPageState();
}

class _InformationPageState extends State<InformationPage> {

  int selectedPage = 2;
  final _pageNo = [Tours(), Favourite(), Locations(), MyTrip(), Profile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(0.01.sw),//5
            child: Container(
              width: double.infinity,
              child: Image.asset(
                "assets/images/BGLocations.png",
                fit: BoxFit.fill,
              ),
            ),
          ),
          GestureDetector(
            child: Container(
              alignment: Alignment.topRight,
              padding: EdgeInsets.only(right: 0.07.sw,top: 0.015.sh),//25,10
              child: Image.asset("assets/images/cancel.png"),
            ),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Locations())),
          ),
          Container(
            margin: EdgeInsets.only(top: 0.015.sh,bottom: 0.03.sh),//10,20
            child: Column(
              children: [
                Image.asset("assets/images/IMGProfile.png"),
                SizedBox(height: 0.02.sh,),//15
                Text("Kenneth Gutierrez",style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.bold),),
                SizedBox(height: 0.015.sh,),//10
                Text("Kenneth_gutierrez@gmail.com",style: TextStyle(fontSize: 15.sp,color: Colors.grey),),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 0.043.sw,right: 0.043.sw),//15,15
                  child: ListTile(
                    leading:Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.asset("assets/images/BGRed.png"),
                        Image.asset("assets/images/bell.png"),
                      ],
                    ),
                    title: RichText(
                      text: TextSpan(
                        text: "Notifiaction ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        children: [
                          TextSpan(
                            text: "  04",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.normal
                            ),
                          ),
                        ],
                      ),
                    ),
                    trailing:Image.asset("assets/images/RightIcon.png"),
                  ),
                ),

                GestureDetector(
                  child: Container(
                    padding: EdgeInsets.only(left: 0.043.sw,right: 0.043.sw),//15,15
                    child: ListTile(
                      leading:Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset("assets/images/BGNail.png"),
                          Image.asset("assets/images/plane.png"),
                        ],
                      ),
                      title: Text(
                        "Tours ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      trailing:Image.asset("assets/images/RightIcon.png"),
                    ),
                  ),
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>Tours())),
                ),

                GestureDetector(
                  child: Container(
                    padding: EdgeInsets.only(left: 0.043.sw,right: 0.043.sw),//15,15,
                    child: ListTile(
                      leading:Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset("assets/images/BGPurple.png"),
                          Image.asset("assets/images/pin.png"),
                        ],
                      ),
                      title: Text(
                        "Location ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      trailing:Image.asset("assets/images/RightIcon.png"),
                    ),
                  ),
                  onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>Locations())),
                ),

                Container(
                  padding: EdgeInsets.only(left: 0.043.sw,right: 0.043.sw),//15,15,
                  child: ListTile(
                    leading:Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.asset("assets/images/BGMove.png"),
                        Image.asset("assets/images/global.png"),
                      ],
                    ),
                    title: Text(
                      "Language ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    trailing:Image.asset("assets/images/RightIcon.png"),
                  ),
                ),

                Container(
                  padding: EdgeInsets.only(left: 0.043.sw,right: 0.043.sw),//15,15
                  child: ListTile(
                    leading:Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.asset("assets/images/BGBlue.png"),
                        Image.asset("assets/images/friend.png"),
                      ],
                    ),
                    title: Text(
                      "Invite Friends ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    trailing:Image.asset("assets/images/RightIcon.png"),
                  ),
                ),

                Image.asset("assets/images/Line.png"),

                Container(
                  padding: EdgeInsets.only(left: 0.043.sw,right: 0.043.sw),//15,15,
                  child: ListTile(
                    leading:Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.asset("assets/images/BGYellow.png"),
                        Image.asset("assets/images/headset-with-microphone.png"),
                      ],
                    ),
                    title: Text(
                      "Help Center",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    trailing:Image.asset("assets/images/RightIcon.png"),
                  ),
                ),

                Container(
                  padding: EdgeInsets.only(left: 0.043.sw,right: 0.043.sw),//15,15,
                  child: ListTile(
                    leading:Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.asset("assets/images/BGGreen.png"),
                        Image.asset("assets/images/IconSetting.png"),
                      ],
                    ),
                    title: Text(
                      "Setting",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    trailing:Image.asset("assets/images/RightIcon.png"),
                  ),
                ),

                GestureDetector(
                  child: Container(
                    padding: EdgeInsets.only(left: 0.043.sw,right: 0.043.sw),//15,15,
                    child: ListTile(
                      leading:Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset("assets/images/BGGrey.png"),
                          Image.asset("assets/images/logout.png"),
                        ],
                      ),
                      title: Text(
                        "Log Out",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      trailing:Image.asset("assets/images/RightIcon.png"),
                    ),
                  ),
                  onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>SignIn())),
                ),
              ],
            ),
          ),
          SizedBox(height: 0.028.sh,)//20
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
        initialActiveIndex:selectedPage,
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
