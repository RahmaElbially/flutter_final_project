import 'dart:convert';

import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:final_project/Screens/information_page.dart';
import 'package:final_project/Screens/paris.dart';
import 'package:final_project/Screens/profile.dart';
import 'package:final_project/Screens/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';
import '../Models/Colors/colors.dart';
import '../Responses/tours_response.dart';
import 'favourite.dart';
import 'locations.dart';
import 'my_trip.dart';

class Tours extends StatefulWidget {
  String? token;

  Tours({Key? key,this.token}) : super(key: key);

  @override
  State<Tours> createState() => _ToursState();
}

class _ToursState extends State<Tours> {

    int selectedPage = 0;
    final _pageNo = [Tours(), Favourite(), Locations(), MyTrip(), Profile()];

    List<Widget> ListviewTours = [
      Container(
        width: 0.28.sw,//100
        margin: EdgeInsets.only(right: 0.045.sw),//20
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "assets/images/MaskIMGParis.png",
              fit: BoxFit.fill,
              width: 0.28.sw,//100
            ),
            SizedBox(
              height: 0.015.sh,//10
            ),
            Padding(
              padding: EdgeInsets.only(left: 0.02.sw),//10
              child: Text(
                "Paris",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 0.015.sh),//10
          ],
        ),
      ),
      Container(
        width: 0.28.sw,
        margin: EdgeInsets.only(right: 0.045.sw),
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "assets/images/MaskIMGIndia.png",
              fit: BoxFit.fill,
              width: 0.28.sw,
            ),
            SizedBox(
              height: 0.015.sh,
            ),
            Padding(
              padding:  EdgeInsets.only(left: 0.02.sw),
              child: Text(
                "India",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 0.015.sh),
          ],
        ),
      ),
      Container(
        width: 0.28.sw,
        margin: EdgeInsets.only(right: 0.045.sw),
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "assets/images/MaskIMGNewyork.png",
              fit: BoxFit.fill,
              width: 0.28.sw,
            ),
            SizedBox(
              height: 0.015.sh,
            ),
            Padding(
              padding:  EdgeInsets.only(left: 0.02.sw),
              child: Text(
                "New York",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 0.015.sh),
          ],
        ),
      ),
      Container(
        width: 0.28.sw,
        margin: EdgeInsets.only(right: 0.045.sw),
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "assets/images/MaskIMGLosAnglos.png",
              fit: BoxFit.fill,
              width: 0.28.sw,
            ),
            SizedBox(
              height: 0.015.sh,
            ),
            Padding(
              padding:  EdgeInsets.only(left: 0.02.sw),
              child: Text(
                "Los Anglos",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 0.015.sh),
          ],
        ),
      ),
    ];

    List<Widget> ListviewOffers = [
      Container(
        padding: EdgeInsets.only(left: 0.02.sw),//10
        margin: EdgeInsets.only(right: 0.04.sw),//14
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(5)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 0.015.sh,//10
            ),
            Text(
              "Holidays",
              style: TextStyle(
                  fontSize: 12.sp,
                  color: Colors.grey[600],
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 0.015.sh,//10
            ),
            Text(
              "Say yes to iconic snow Catamount,\n Hillsdale, New York!",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Text(
                  "Book your holiday package today",
                  style: TextStyle(color: Colors.grey[600], fontSize: 12.sp),
                ),
                Image.asset("assets/images/ButtonOffer.png"),
              ],
            ),
            SizedBox(
              height: 0.01,//6
            ),
          ],
        ),
      ),
      Container(
        padding: EdgeInsets.only(left: 0.02.sw),
        margin: EdgeInsets.only(right: 0.04.sw),
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(5)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 0.015.sh,
            ),
            Text(
              "Holidays",
              style: TextStyle(
                  fontSize: 12.sp,
                  color: Colors.grey[600],
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 0.015.sh,
            ),
            Text(
              "Say yes to iconic snow Catamount,\n Hillsdale, New York!",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Text(
                  "Book your holiday package today",
                  style: TextStyle(color: Colors.grey[600], fontSize: 12.sp),
                ),
                Image.asset("assets/images/ButtonOffer.png"),
              ],
            ),
            SizedBox(
              height:  0.01.sh,
            ),
          ],
        ),
      ),
      Container(
        padding: EdgeInsets.only(left: 0.02.sw),
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(5)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 0.015.sh,
            ),
            Text(
              "Holidays",
              style: TextStyle(
                  fontSize: 12.sp,
                  color: Colors.grey[600],
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 0.015.sh,
            ),
            Text(
              "Say yes to iconic snow Catamount,\n Hillsdale, New York!",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Text(
                  "Book your holiday package today",
                  style: TextStyle(color: Colors.grey[600], fontSize: 12.sp),
                ),
                Image.asset("assets/images/ButtonOffer.png"),
              ],
            ),
            SizedBox(
              height:  0.01.sh,
            ),
          ],
        ),
      ),
    ];

    List<Widget> ListviewDiscover = [
      Container(
        margin: EdgeInsets.only(right: 0.047.sw),//20
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Image.asset("assets/images/EffilTower.png"),
                Container(
                  padding: EdgeInsets.only(bottom: 0.02.sh, left: 0.03.sw),//12,10
                  child: Text(
                    "Eiffel Tower",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 0.015.sh,//10
            ),
            Container(
              // alignment: Alignment.centerLeft,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                    ],
                  ),
                  SizedBox(
                    height: 0.009.sh,//5
                  ),
                  Text(
                    "4.8 (512 Reviews)",
                    style:
                    TextStyle(color: CustomColors.background, fontSize: 14.sp),
                  ),
                  SizedBox(
                    height: 0.009.sh,//5
                  ),
                  Text(
                    "Paris",
                    style: TextStyle(fontSize: 12.sp),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.only(right: 0.047.sw),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Image.asset("assets/images/ParrotCay.png"),
                Container(
                  padding: EdgeInsets.only(bottom: 0.02.sh, left: 0.03.sw),
                  child: Text(
                    "Parrot Cay",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 0.015.sh,
            ),
            Container(
              // alignment: Alignment.centerLeft,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                    ],
                  ),
                  SizedBox(
                    height: 0.009.sh,
                  ),
                  Text(
                    "4.8 (512 Reviews)",
                    style:
                    TextStyle(color: CustomColors.background, fontSize: 14.sp),
                  ),
                  SizedBox(
                    height: 0.009.sh,
                  ),
                  Text(
                    "Hawaii",
                    style: TextStyle(fontSize: 12.sp),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.only(right: 0.047.sw),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Image.asset("assets/images/NatroDame.png"),
                Container(
                  padding: EdgeInsets.only(bottom: 0.02.sh, left: 0.03.sw),
                  child: Text(
                    "Nator Dame",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 0.015.sh,
            ),
            Container(
              // alignment: Alignment.centerLeft,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                    ],
                  ),
                  SizedBox(
                    height: 0.009.sh,
                  ),
                  Text(
                    "4.8 (512 Reviews)",
                    style:
                    TextStyle(color: CustomColors.background, fontSize: 14.sp
                    ),
                  ),
                  SizedBox(
                    height: 0.009.sh,
                  ),
                  Text(
                    "Paris",
                    style: TextStyle(fontSize: 12.sp),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ];

  ToursResponse? places;
    
    @override
    Widget build(BuildContext context) {

      getPlaces();

      return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(0.01.sw),
                child: Container(
                  width: double.infinity,
                  child: Image.asset(
                    "assets/images/BGLocations.png",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(
                height: 0.03.sh,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    child: Image.asset("assets/images/Side Manu Arrow.png"),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => InformationPage()));
                    },
                  ),
                  Text(
                    "TOURS",
                    style:
                    TextStyle(fontSize: 25.sp, fontWeight: FontWeight.bold),
                  ),
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
                height: 0.04.sh,
              ),
              Padding(
                padding:  EdgeInsets.only(left: 0.055.sw),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Popular Destination",
                        style: TextStyle(
                            color: CustomColors.background,
                            fontSize: 22.sp,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 0.009.sh,
                      ),
                      Text(
                        '10 Tours Avialable',
                        style: TextStyle(fontSize: 12.sp, color: Colors.grey),
                      ),
                      SizedBox(
                        height: 0.022.sh,
                      ),
                      SizedBox(
                        height: 0.17.sh,
                        child: GestureDetector(
                          child:
                           ListView.builder(
                            itemBuilder: (value, index) {
                              return ListviewTours[index];
                            },
                            itemCount: ListviewTours.length,
                            scrollDirection: Axis.horizontal,
                          ),
                          // ListView.builder(
                          //   itemBuilder: (value, index) {
                          //     Data2 item = places!.data!.data![index];
                          //     return Container(
                          //       width: 100,
                          //       margin: EdgeInsets.only(right: 20),
                          //       alignment: Alignment.centerLeft,
                          //       decoration: BoxDecoration(
                          //         color: Colors.white,
                          //         borderRadius: BorderRadius.circular(10),
                          //       ),
                          //       child: Column(
                          //         crossAxisAlignment: CrossAxisAlignment.start,
                          //         children: [
                          //           Image.network(
                          //             item.image!,
                          //             fit: BoxFit.fill,
                          //             width: 100,
                          //           ),
                          //           SizedBox(
                          //             height: 10,
                          //           ),
                          //           Padding(
                          //             padding: const EdgeInsets.only(left: 10),
                          //             child: Text(
                          //               item.name!,
                          //               style: TextStyle(fontWeight: FontWeight.bold),
                          //             ),
                          //           ),
                          //           SizedBox(height: 10),
                          //         ],
                          //       ),
                          //     );
                          //   },
                          //   itemCount: places?.data?.data?.length,
                          //   scrollDirection: Axis.horizontal,
                          // ),
                          onTap: (){
                            ListviewTours[0];
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Paris()));
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 0.04.sh,
              ),
              Stack(
                children: [
                  Container(
                    child: Stack(
                      children: [
                        Image.asset("assets/images/ImageOffer.png"),
                        Padding(
                          padding:  EdgeInsets.only(top: 0.066.sh, left: 0.015.sw),
                          child: Column(
                            children: [
                              RichText(
                                text: TextSpan(
                                  text: "SAVE ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey[600],
                                  ),
                                  children: [
                                    TextSpan(
                                      text: "up to ",
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          color: Colors.grey[600]),
                                    ),
                                    TextSpan(
                                      text: "45%",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey[600],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                "Catamount, Hillsdale, NY",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.sp,
                                    color: Colors.grey[600]),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: SizedBox(
                      height: 0.33.sh,
                      width: 0.85.sw,//300
                      child: ListView.builder(
                        itemBuilder: (value, index) {
                          return ListviewOffers[index];
                        },
                        itemCount: ListviewOffers.length,
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.only(top: 0.13.sh),//90
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 0.042.sh,
              ),
              Padding(
                padding:  EdgeInsets.only(left: 0.055.sw),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Discover New Places",
                        style: TextStyle(
                            color: CustomColors.background,
                            fontSize: 22.sp,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 0.03.sh,
                      ),
                      SizedBox(
                        height: 0.4.sh,//300
                        child: ListView.builder(
                          itemBuilder: (value, index) {
                            return ListviewDiscover[index];
                          },
                          itemCount: ListviewDiscover.length,
                          scrollDirection: Axis.horizontal,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 0.065.sh,
              ),
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

    Future getPlaces() async{
      Response tourResponse = await get(Uri.parse("http://alcaptin.com/api/places"),headers: {
        "Accept" : "application/json",
        "Authorization":
          "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC9hbGNhcHRpbi5jb21cL2FwaVwvbG9naW4iLCJpYXQiOjE2NjM4NzQ2MjUsIm5iZiI6MTY2Mzg3NDYyNSwianRpIjoiVFRiVWZSaGd6cjVaaFhQZiIsInN1YiI6OTMsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.EZet4msvbXCM7c_Z0Y3MDlsrNeGvmX8IME1aQy_MNPI"
    },);

      dynamic convertedJson = jsonDecode(tourResponse.body);

        places = ToursResponse.fromJson(convertedJson);


       print("Response Is : ${tourResponse.body}");


    }

}

