// ignore_for_file: prefer_const_constructors, unused_local_variable

import 'dart:html';
import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  AppBar buildappBar() {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.white,
      title: Text(
        'Chalermsak Maleehom',
        style: TextStyle(
          color: const Color.fromARGB(255, 0, 0, 0),
        ),
      ),
    );
  }

  Widget buildImageTextWidget() {
    List<String> images = [
      'assets/images/jett.png',
      'assets/images/raze.png',
      'assets/images/reyna.png',
    ];

    List<String> imageTexts = [
      'JETT',
      'RAZE',
      'REYNA',
    ];

    Random random = Random();
    int randomIndex = random.nextInt(imageTexts.length);

    String randomItemText = imageTexts[randomIndex];
    String randomItemImage = images[randomIndex];

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            child: Image.asset(
              images[randomIndex],
              width: 450.0,
              height: 450.0,
            ),
          ),
          SizedBox(height: 20.0), // เพิ่มระยะห่างระหว่างรูปภาพกับ Text
          Text(
            imageTexts[randomIndex],
            style: TextStyle(fontSize: 30.0),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Scaffold(
          appBar: buildappBar(),
          body: buildImageTextWidget(),
        ));
  }
}
