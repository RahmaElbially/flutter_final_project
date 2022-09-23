import 'package:final_project/Providers/sign_up_provider.dart';
import 'package:final_project/Screens/paris.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'Providers/sign_in_provider.dart';
import 'Screens/page_views.dart';
import 'Screens/information_page.dart';
import 'Screens/locations.dart';
import 'Screens/my_trip.dart';
import 'Screens/sign_in.dart';
import 'Screens/sign_up.dart';
import 'Screens/splash_screen.dart';
import 'Screens/tours.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context , child) {
        return MultiProvider(
          providers:[
            ChangeNotifierProvider(create: (_)=> SignInProvider()),
            ChangeNotifierProvider(create: (_)=> SignUpProvider()),
          ],
          child: MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              // This is the theme of your application.
              //
              // Try running your application with "flutter run". You'll see the
              // application has a blue toolbar. Then, without quitting the app, try
              // changing the primarySwatch below to Colors.green and then invoke
              // "hot reload" (press "r" in the console where you ran "flutter run",
              // or simply save your changes to "hot reload" in a Flutter IDE).
              // Notice that the counter didn't reset back to zero; the application
              // is not restarted.
              primarySwatch: Colors.blue,
            ),
            home: child,
          ),
        );
      },
      child: SplashScreen(),
    );
  }
}
