import 'package:find_university/models/user.dart';
import 'package:find_university/values/app_colors.dart';
import 'package:find_university/values/app_image_icon.dart';
import 'package:find_university/values/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class DrawerWidget extends StatefulWidget {
  final User user;
  DrawerWidget({this.user});

  @override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  // Return avatar when not logged in
  Container avatarNoAccount(sizeHeight) {
    return Container(
      height: sizeHeight * 1 / 17,
      width: sizeHeight * 1 / 17,
      child: CircleAvatar(
        backgroundImage: AssetImage(AppImageIcon.noAccount),
      ),
      decoration: BoxDecoration(
          boxShadow: [_boxShadow], borderRadius: BorderRadius.circular(40)),
    );
  }

  final _boxShadow = BoxShadow(
    color: Colors.black.withOpacity(0.5),
    spreadRadius: 0.1,
    blurRadius: 5,
    offset: Offset(1, 1), // changes position of shadow
  );

  final _shadowContainer = BoxShadow(
    color: Colors.black.withOpacity(0.2),
    spreadRadius: 0.1,
    blurRadius: 5,
    offset: Offset(0, 2), // changes position of shadow
  );

  @override
  Widget build(BuildContext context) {
    final double _sizeWidth = MediaQuery.of(context).size.width;
    final double _sizeHeight = MediaQuery.of(context).size.height;

    if (widget.user.email == null || widget.user == null) {
      // return Drawer(
      //   child: Container(
      //     decoration: AppColors.decorationGradient,
      //     child: Column(
      //       children: [
      //         Padding(
      //           padding: const EdgeInsets.only(top: 60),
      //           child: Center(
      //             child: Container(
      //               height: _sizeHeight * 1 / 17,
      //               width: _sizeHeight * 1 / 17,
      //               child: CircleAvatar(
      //                 backgroundImage: AssetImage(AppImageIcon.noAccount),
      //               ),
      //               decoration: BoxDecoration(boxShadow: [
      //                 BoxShadow(
      //                   color: Colors.grey,
      //                   blurRadius: 7,
      //                   offset: Offset(0, 3),
      //                 ),
      //               ], borderRadius: BorderRadius.circular(40)),
      //             ),
      //           ),
      //         ),
      //         Padding(
      //           padding: const EdgeInsets.only(top: 8, bottom: 22),
      //           child: RaisedButton(
      //             elevation: 7.0,
      //             color: Color(0xFF4285F4),
      //             child: Text(
      //               'LOGIN',
      //               style: AppStyle.h4.copyWith(
      //                   fontWeight: FontWeight.w600, color: Colors.white),
      //             ),
      //             onPressed: () {},
      //           ),
      //         ),
      //         Expanded(
      //           child: Container(
      //             decoration: AppColors.decorationGradient,
      //           ),
      //         ),
      //       ],
      //     ),
      //   ),
      // );
      return Drawer(
        child: Container(
          decoration: AppColors.decorationGradient,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                avatarNoAccount(_sizeHeight),
                SizedBox(height: _sizeHeight * 0.01),
                SignInButtonBuilder(
                  elevation: 5,
                  width: _sizeWidth * 0.39,
                  text: 'Sign in with Gmail',
                  textColor: AppColors.black87,
                  iconColor: AppColors.black87,
                  icon: Icons.email,
                  onPressed: () {},
                  backgroundColor: AppColors.white,
                ),
                Container(
                  height: _sizeHeight * 1 / 11,
                )
              ],
            ),
          ),
        ),
      );
    } else {
      return Drawer(
        child: Container(
          decoration:
              AppColors.decorationGradient.copyWith(boxShadow: [_boxShadow]),
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                  accountName: Text(
                    widget.user.userName.toUpperCase(),
                    style: AppStyle.h2Bold,
                    overflow: TextOverflow.ellipsis,
                  ),
                  accountEmail: Text(
                    widget.user.email,
                    style: AppStyle.h3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  currentAccountPicture: Container(
                    child: Container(
                      decoration: BoxDecoration(
                          boxShadow: [_boxShadow],
                          borderRadius: BorderRadius.all(Radius.circular(40))),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(widget.user.avatar),
                      ),
                    ),
                  ),
                  decoration: AppColors.decorationGradient.copyWith(
                    boxShadow: [_shadowContainer],
                  )),
              ...listTitle(_sizeWidth),
            ],
          ),
        ),
      );
    }
  }
}

List<ListTile> listTitle(_sizeWidth) {
  List<ListTile> list = [
    createListTile('Following', AppImageIcon.following, _sizeWidth),
    createListTile('Follower', AppImageIcon.follower, _sizeWidth),
    createListTile('Rate', AppImageIcon.rate, _sizeWidth),
    createListTile('People contacted', AppImageIcon.contact, _sizeWidth),
    createListTile('Setting', AppImageIcon.setting, _sizeWidth),
  ];
  return list;
}

ListTile createListTile(title, imageIcon, _sizeWidth) {
  print('SIZE WITH: $_sizeWidth');
  return ListTile(
    leading: GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {},
      child: Container(
        width: _sizeWidth * 1 / 12,
        height: _sizeWidth * 1 / 12,
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
