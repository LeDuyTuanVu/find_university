import 'package:find_university/models/user.dart';
import 'package:find_university/values/app_colors.dart';
import 'package:find_university/values/app_styles.dart';
import 'package:find_university/widgets/drawer_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const String titleAppBar = '5UNIVERSITY';
  User user = User.createUser();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        title: Text(titleAppBar, style: AppStyle.titleAppBar),
        flexibleSpace: AppColors.flexibleSpace,
        centerTitle: true,
      ),
      drawer: DrawerWidget(user: user),
      body: Container(
        decoration: BoxDecoration(color: Colors.white),
      ),
    );
  }
}
