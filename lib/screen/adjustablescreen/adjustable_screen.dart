import 'package:flutter/material.dart';
import 'package:get/get.dart';
class AdjustableScreen extends StatefulWidget {
  const AdjustableScreen({Key? key}) : super(key: key);

  @override
  State<AdjustableScreen> createState() => _AdjustableScreenState();
}

class _AdjustableScreenState extends State<AdjustableScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: Get.height,
        width: Get.width*0.5,
        color: Colors.lightBlueAccent,



      ),
    );
  }
}
