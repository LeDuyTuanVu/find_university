import 'package:find_university/models/user.dart';
import 'package:find_university/values/app_colors.dart';
import 'package:find_university/values/app_styles.dart';
import 'package:find_university/widgets/drawer_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const String titleAppBar = '5UNIVERSITY';
  User user = User.createUser();
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = [
    Text(
      'HOME',
    ),
    Text(
      'LIKE',
    ),
    Text(
      'SEARCH',
    ),
    Text(
      'PROFILE',
    ),
  ];

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
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
          child: GNav(
            rippleColor: Colors.grey[300],
            hoverColor: Colors.grey[100],
            gap: 8,
            activeColor: Colors.black,
            iconSize: 24,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            duration: Duration(milliseconds: 400),
            tabBackgroundColor: Color(0xFF64FFDA),
            color: Colors.black,
            tabs: [
              GButton(
                backgroundColor: Color(0xFF64FFDA),
                icon: LineIcons.home,
                text: 'HOME',
                textStyle: AppStyle.h4.copyWith(fontWeight: FontWeight.w600),
              ),
              GButton(
                backgroundColor: Color(0xFF4EF3E2),
                icon: LineIcons.heart,
                text: 'LIKES',
                textStyle: AppStyle.h4.copyWith(fontWeight: FontWeight.w600),
              ),
              GButton(
                backgroundColor: Color(0xFF37E7F1),
                icon: LineIcons.search,
                text: 'SEARCH',
                textStyle: AppStyle.h4.copyWith(fontWeight: FontWeight.w600),
              ),
              GButton(
                backgroundColor: Color(0xFF00CCFF),
                icon: LineIcons.user,
                text: 'PROFILE',
                textStyle: AppStyle.h4.copyWith(fontWeight: FontWeight.w600),
              ),
            ],
            selectedIndex: _selectedIndex,
            onTabChange: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.search),
        backgroundColor: Color(0xFF3FECE6),
      ),
    );
  }
}
