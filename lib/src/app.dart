import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/src/configs.dart/appThame.dart';
import 'package:news_app/src/pages/homePage.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      smartManagement: SmartManagement.onlyBuilder,
      debugShowCheckedModeBanner: false,
      theme: AppThame.appThame,
      home: HomePade(),
    );
  }
}
