// import 'package:find_university/values/app_colors.dart';
// import 'package:find_university/values/app_image_icon.dart';
// import 'package:find_university/values/app_styles.dart';
// import 'package:flutter/material.dart';

// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   static const String titleApp = '5UNIVERSITY';

//   final ImageIcon _iconCheck = ImageIcon(AssetImage('assets/icons/search.png'));

//   final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

//   ImageIcon _imageIcon = ImageIcon(
//     AssetImage(AppImageIcon.search),
//     size: 23,
//   );

//   void submit() {
//     print('OKOK');
//   }

//   // Return title's AppBar or Return search AppBar
//   Widget textAppBar(ImageIcon _imageIcon) {
//     if (_imageIcon.image == _iconCheck.image) {
//       return Text(
//         titleApp,
//         style: AppStyle.titleAppBar,
//       );
//     }
//     return TextField(
//       cursorColor: AppColors.black54,
//       style: AppStyle.h4,
//       autofocus: true,
//       decoration: InputDecoration(
//         hintText: ' Search . . .',
//         hintStyle: AppStyle.h4,
//         // Bỏ gạch chân phía dưới TextField
//         border: InputBorder.none,
//       ),
//       onSubmitted: (context) {
//         print('OKOK');
//       },
//       onChanged: (context) {
//         print(context);
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: _scaffoldKey,
//       drawer: Drawer(),
//       appBar: AppBar(
//         leading: GestureDetector(
//           child: ImageIcon(
//             AssetImage(
//               AppImageIcon.menu,
//             ),
//           ),
//           onTap: () => _scaffoldKey.currentState.openDrawer(),
//         ),
//         title: textAppBar(_imageIcon),
//         centerTitle: true,
//         elevation: 5,
//         actions: [
//           IconButton(
//             icon: _imageIcon,
//             onPressed: () {
//               if (_imageIcon.image == _iconCheck.image) {
//                 setState(() {
//                   _imageIcon = ImageIcon(
//                     AssetImage(AppImageIcon.close),
//                     size: 23,
//                   );
//                 });
//               } else {
//                 setState(() {
//                   _imageIcon = ImageIcon(
//                     AssetImage(AppImageIcon.search),
//                     size: 23,
//                   );
//                 });
//               }
//             },
//           ),
//         ],
//         flexibleSpace: AppColors.flexibleSpace,
//       ),
//       // body: ,
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           print('object');
//         },
//         child: ImageIcon(
//           AssetImage(AppImageIcon.filter),
//           size: 23,
//         ),
//       ),
//     );
//   }
// }





