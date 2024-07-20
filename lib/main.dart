import 'dart:ui';

import 'package:cosmos/cosmos.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jeafriday/page/home.dart';
import 'package:jeafriday/page/home_mobile.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'JeaFriday',
      debugShowCheckedModeBanner: false,
      home: width(context) < 800
          ? const HomePageMobile() //
          : const HomePagePc(), //
    );
  }
}
