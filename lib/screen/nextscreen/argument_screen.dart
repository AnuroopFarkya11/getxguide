import 'package:flutter/material.dart';

class ArgumentScreen extends StatefulWidget {
  final String name;

  const ArgumentScreen({Key? key, required this.name}) : super(key: key);

  @override
  State<ArgumentScreen> createState() => _ArgumentScreenState();
}

class _ArgumentScreenState extends State<ArgumentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(widget.name),
      ),
    );
  }
}
