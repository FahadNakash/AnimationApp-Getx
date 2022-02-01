import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'screens/company_detail_screen.dart';
import 'controllers/company_controller.dart';
void main() {
  Get.put(CompanyController());
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Company_App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CompanyDetailScreen()
    );
  }
}
