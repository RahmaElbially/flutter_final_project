import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:final_project/Models/Colors/colors.dart';
import 'package:final_project/Screens/profile.dart';
import 'package:final_project/Screens/search.dart';
import 'package:final_project/Screens/tours.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'favourite.dart';
import 'locations.dart';
import 'my_trip.dart';

class Paris extends StatefulWidget {
  const Paris({Key? key}) : super(key: key);

  @override
  State<Paris> createState() => _ParisState();
}

class _ParisState extends State<Paris> {

  int selectedPage = 2;
  final _pageNo = [Tours(), Favourite(), Locations(), MyTrip(), Profile()];

  List<Widget> ListviewParis = [
    Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),),
      child: Image.asset("assets/images/IMG 01.png"),
    ),
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),),
      child: Image.asset("assets/images/IMG 02.png"),
    ),
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),),
      child: Image.asset("assets/images/IMG 03.png"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
            SizedBox(
              height: 0.025.sh,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 0.07.sw),//25
                  child: Image.asset("assets/images/next.png"),
                ),
                Container(
                  margin: EdgeInsets.only(left: 0.02.sw,right: 0.2.sw),//7,70
                  child: Text("Back",style: TextStyle(color: Colors.grey,fontSize: 16.sp),),
                ),
                Text(
                  "Paris",
                  style:
                  TextStyle(fontSize: 25.sp, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 0.28.sw,),//100
                GestureDetector(
                  child: Image.asset(
                      "assets/images/searching-magnifying-glass.png"),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Search()));
                  },
                ),
              ],
            ),
            SizedBox(
              height: 0.048.sh,//30
            ),
            Stack(
              children: [
                Container(
                  child: Stack(
                    children: [
                      Image.asset("assets/images/Mask ImageParisPage.png"),
                      Padding(
                        padding: EdgeInsets.only(top: 0.078.sh, left: 0.015.sw),//50,5
                        child: Container(
                          padding: EdgeInsets.only(left: 0.2.sw),//72
                          child: Column(
                            children: [
                              Text(
                                "Top 10 Favourite",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.bold,
                                    height: 0.0025.sh),//1.5
                              ),
                              Text(
                                "Destination In Paris",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.sp,
                                    height: 0.003.sh,//2
                                    fontWeight: FontWeight.bold),)
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: SizedBox(
                    height: 0.48.sh,//320
                    child: ListView.builder(
                      itemBuilder: (value, index) {
                        return ListviewParis[index];
                      },
                      itemCount: ListviewParis.length,
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.only(top: 0.19.sh),//130
                    ),
                  ),
                ),
              ],
            ),
            Center(
              child: Text("Disneyland Paris",style: TextStyle(fontSize: 20.sp),),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 0.05.sw),//20
              margin: EdgeInsets.only(top: 0.015.sh),//10
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Departure",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold),),
                  SizedBox(height: 0.009.sh,),//5
                  Text("23rd Oct 2017",style: TextStyle(fontSize: 12.sp,color: Colors.grey),),
                  SizedBox(height: 0.02.sh,),//15
                  Text("Duration",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold),),
                  SizedBox(height: 0.009.sh,),//5
                  Text("5 Days / 4  Nights",style: TextStyle(fontSize: 12.sp,color: Colors.grey),),
                  SizedBox(height: 0.02.sh,),//15
                  Text("Discover 7 World Heritage Sites in this \n tour.",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold),),
                  SizedBox(height: 0.009.sh,),//5
                  Text(
                    "Fans of Mickey can visit Disneyland Paris which is \n located 32 km from central Paris, with connection \n "
                        "to the suburban RER A.",
                    style: TextStyle(fontSize: 12.sp, color: Colors.grey),
                  ),
                  SizedBox(height: 0.009.sh,),//5
              Text(
                "Disneyland Paris has two theme parks: Disneyland \n (with Sleeping Beauty's castle) and Walt Disney \n Studios. Top attractions are Space Mountain, It's a \n "
                    "Small World and Big Thunder Mountain.",
                style: TextStyle(fontSize: 12.sp, color: Colors.grey),),
                ],
              ),
            ),
            SizedBox(height: 0.026.sh),//20
            Row(
              children: [
                Expanded(
                    flex: 2,
                    child: Container(color: CustomColors.background,height: 0.0015.sh,),//1
                ),
                Expanded(
                    child: Container(color: Colors.grey,height: 0.0015.sh,),//1
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(top: 0.028.sh),//20
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Overview",style: TextStyle(color: CustomColors.background,fontWeight: FontWeight.bold),),
                      Text("Places",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                      Text("Itinerary",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                      Text("Review",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                    ],
                  ),
                  SizedBox(height: 0.028.sh,),//20
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: 0.05.sw),//20
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: "\$1,020",
                            style: TextStyle(
                                fontSize: 12.sp, fontWeight: FontWeight.bold,color: Colors.black),
                            children: [
                              TextSpan(
                                text: " per person",
                                style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 0.008.sh,),//5
                        Row(
                          children: [
                            Icon(
                              Icons.star_outlined,
                              color: CustomColors.stars,
                              size: 18.sp,
                            ),
                            Icon(
                              Icons.star_outlined,
                              color: CustomColors.stars,
                              size: 18.sp,
                            ),
                            Icon(
                              Icons.star_outlined,
                              color: CustomColors.stars,
                              size: 18.sp,
                            ),
                            Icon(
                              Icons.star_outlined,
                              color: CustomColors.stars,
                              size: 18.sp,
                            ),
                            Icon(
                              Icons.star_outlined,
                              color: CustomColors.stars,
                              size: 18.sp,
                            ),
                            SizedBox(width: 0.045.sw,),//15
                            Text("4.8 (512 Reviews)",style: TextStyle(color: CustomColors.stars,fontSize: 12.sp),),
                            SizedBox(width: 0.08.sw,),//30
                            ElevatedButton(
                              style: ButtonStyle(
                                padding: MaterialStateProperty.all(EdgeInsets.all(0.042.sw)),//15
                                backgroundColor: MaterialStateProperty.all(CustomColors.background),
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                ),
                              ),
                              onPressed: () {},
                              child: Text(
                                "Book Now",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 0.028.sh,),//20
          ],
        ),
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
