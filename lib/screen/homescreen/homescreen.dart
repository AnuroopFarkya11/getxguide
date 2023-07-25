import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxguide/screen/adjustablescreen/adjustable_screen.dart';
import 'package:getxguide/screen/nextscreen/next_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetX"),
      ),
      body: Column(
        children: [
          Card(
            margin: const EdgeInsets.all(10),
            elevation: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(onPressed: (){
                  Get.snackbar("Theme Changed!", "Light Theme");

                  Get.changeTheme(ThemeData.light());

                }, child: const Icon(Icons.sunny)),
                TextButton(onPressed: (){
                  Get.snackbar("Theme CHanged!","Dark theme");
                  Get.changeTheme(ThemeData.dark());


                }, child: const Icon(Icons.sunny_snowing)),

              ],
            ),
          ),
          Card(
            margin: const EdgeInsets.all(10),
            elevation: 20,
            child: ListTile(
              title: const Text("Show Get.defaultDialog"),
              subtitle: const Text(" Get.defaultDialog()"),
              onTap: () {
                Get.defaultDialog(
                    // this is predefined button
                    title: "GetX Dialog",
                    textConfirm: "OK",
                    confirmTextColor: Colors.white,
                    onConfirm: () {
                      Get.back();
                    },
                    // confirm: , this can used to design custom buttons
                    // this is a custom button
                    cancel: TextButton(
                        onPressed: () {
                          Get.back();
                        },
                        child: const Text("CANCEL")));
              },
            ),
          ),
          Card(
            margin: const EdgeInsets.all(10),
            elevation: 20,
            child: ListTile(
              title: const Text("Show bottom sheet"),
              subtitle: const Text("Get.bottomSheet"),
              onTap: () {
                Get.bottomSheet(Container(
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                      color: Colors.lightBlueAccent.shade100),
                  child: const Center(
                    child: Text("HELLO THERE!"),
                  ),
                ));
              },
            ),
          ),
          Card(
            margin: const EdgeInsets.all(10),
            elevation: 20,
            child: ListTile(
              title: const Text("Navigators"),
              subtitle: const Text("Get.to(nextScreen object)"),
              onTap: (){
                Get.to(const ScreenOne());
              },
            ),
          ),
          Card(
            margin: const EdgeInsets.all(10),
            elevation: 20,
            child: ListTile(
              title: const Text("Height and Width"),
              subtitle: const Text("Get.height and Get.width"),
              onTap: (){
                Get.to(const AdjustableScreen());
              },
            ),
          ),

          
        ],
      ),



      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar(
            "Ram ji",
            "Hanumanji",
            snackPosition: SnackPosition.BOTTOM,
          );
        },
        child: Icon(Icons.notifications),
      ),
    );
  }
}
