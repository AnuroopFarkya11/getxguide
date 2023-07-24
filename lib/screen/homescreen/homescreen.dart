import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
            child: ListTile(
              title: const Text("Show Get.defaultDialog"),
              subtitle: const Text("Please tap"),
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
            margin: EdgeInsets.all(10),
            elevation: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(onPressed: (){
                  Get.snackbar("Theme Changed!", "Light Theme");

                  Get.changeTheme(ThemeData.light());

                }, child: Icon(Icons.sunny)),
                TextButton(onPressed: (){
                  Get.snackbar("Theme CHanged!","Dark theme");
                  Get.changeTheme(ThemeData.dark());


                }, child: Icon(Icons.sunny_snowing)),

              ],
            ),
          )
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
      ),
    );
  }
}
