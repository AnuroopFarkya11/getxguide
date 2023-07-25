import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxguide/screen/nextscreen/argument_screen.dart';
import 'package:getxguide/screen/nextscreen/next_second_screen.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        children: [
          Card(
            margin: const EdgeInsets.all(10),
            elevation: 20,
            child: ListTile(
              title: const Text("Navigators"),
              subtitle: const Text("Get.back()"),
              onTap: () {
                Get.back();
              },
            ),
          ),
          Card(
            margin: const EdgeInsets.all(10),
            elevation: 20,
            child: ListTile(
              title: const Text("Navigators"),
              subtitle: const Text("Get.to() then Get.offAll(HomeScreen())"),
              onTap: () {
                Get.to(const ScreenTwo());
              },
            ),
          ),

          Card(
            margin: const EdgeInsets.all(10),
            elevation: 20,
            child: ListTile(
              title: const Text("Navigators : Passing Arguments"),
              subtitle: const Text("Get.to(ScreenObject(name:Ramji))"),
              onTap: () {
                Get.to(const ArgumentScreen(name: "Ramji"));
              },
            ),
          ),
          Card(
            margin: const EdgeInsets.all(10),
            elevation: 20,
            child: ListTile(
              title: const Text("Navigators : Routing using routes"),
              subtitle: const Text("Get.toNamed()"),
              onTap: () {
                Get.toNamed('/ScreenTwo');
              },
            ),
          ),
        ],

      ),
    );
  }
}
