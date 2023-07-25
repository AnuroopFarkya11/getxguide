import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxguide/screen/homescreen/homescreen.dart';
class ScreenTwo extends StatefulWidget {
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false,),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         Card(
            margin: const EdgeInsets.all(10),
            elevation: 20,
            child: ListTile(
              title: const Text("Navigators"),
              subtitle: const Text("Get.offAll(HomeScreen())"),
              onTap: (){
                Get.offAll(const HomeScreen());
              },
            ),
          )
        ],


      ),


    );
  }
}
