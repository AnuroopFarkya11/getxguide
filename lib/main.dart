import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxguide/screen/homescreen/homescreen.dart';
import 'package:getxguide/screen/nextscreen/argument_screen.dart';
import 'package:getxguide/screen/nextscreen/next_screen.dart';
import 'package:getxguide/screen/nextscreen/next_second_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
      getPages: [
        GetPage(name: '/', page: ()=>const HomeScreen()),
        GetPage(name: '/ScreenOne', page:()=>const ScreenOne()),
        GetPage(name: '/ScreenTwo', page:()=>const ScreenTwo()),



      ],
    );
  }
}

