import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:goaluin_flutter/control/home_controller.dart';
import 'package:goaluin_flutter/view/registration/screen/onboarding.dart';


void main() {
  runApp(const MyApp());
  Get.put(HomeController());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'goaluin-flutter-assignment',
      
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BoardingScreen(),
      
    );
  }
}
