import 'package:find_university/models/user.dart';
import 'package:find_university/values/app_colors.dart';
import 'package:find_university/values/app_image_icon.dart';
import 'package:find_university/values/app_styles.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  final User user;
  DrawerWidget({this.user});

  @override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    final double sizeWidth = MediaQuery.of(context).size.width;
    return Drawer(
      elevation: 5,
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(widget.user.userName.toUpperCase(),
                style: AppStyle.h2Bold),
            accountEmail: Text(widget.user.email, style: AppStyle.h3),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(widget.user.avatar),
            ),
            decoration: AppColors.decorationGradient,
          ),
          ...listTitle(sizeWidth),
        ],
      ),
    );
  }
}

List<ListTile> listTitle(sizeWidth) {
  List<ListTile> list = [
    createListTile('Following', AppImageIcon.following, sizeWidth),
    createListTile('Follower', AppImageIcon.follower, sizeWidth),
    createListTile('Rate', AppImageIcon.rate, sizeWidth),
    createListTile('People contacted', AppImageIcon.contact, sizeWidth),
    createListTile('Setting', AppImageIcon.setting, sizeWidth),
  ];
  return list;
}

ListTile createListTile(title, imageIcon, sizeWidth) {
  print('SIZE WITH: $sizeWidth');
  return ListTile(
    leading: GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {},
      child: Container(
        width: sizeWidth * 1 / 12,
        height: sizeWidth * 1 / 12,
        alignment: Alignment.center,
        child: imageIcon,
      ),
    ),
    title: Text(
      title,
      style: AppStyle.h3,
      overflow: TextOverflow.ellipsis,
    ),
    dense: false,
  );
}
