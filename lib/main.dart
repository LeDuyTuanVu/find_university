import 'package:find_university/pages/home_page.dart';
import 'package:find_university/values/app_colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: AppColors.generateMaterialColor(AppColors.primaryColor),
        // Hiển thị hình ảnh tương ứng với nền tảng đang chạy
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}
