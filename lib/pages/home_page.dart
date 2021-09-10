import 'package:find_university/values/app_styles.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String _titleAppBar = '5UNIVERSITY';

  Icon _icon = Icon(
    Icons.search,
    size: 20,
    color: Colors.black,
  );

  void submit() {
    print('OKOK');
  }

  // Return title's AppBar or Return search AppBar
  Widget textAppBar(Icon _icon) {
    if (_icon.icon == Icons.search) {
      return Text(
        _titleAppBar,
        style: AppStyle.appBarTitle,
      );
    }
    return TextField(
      cursorColor: Colors.black54,
      style: AppStyle.textNormal,
      autofocus: true,
      decoration: InputDecoration(
        hintText: ' Search . . .',
        hintStyle: AppStyle.textNormal,
        // Bỏ gạch chân phía dưới TextField
        border: InputBorder.none,
      ),
      onSubmitted: (context) {
        print('OKOK');
      },
      onChanged: (context) {
        print(context);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: textAppBar(_icon),
        centerTitle: true,
        elevation: 5,
        actions: [
          IconButton(
            icon: _icon,
            onPressed: () {
              if (_icon.icon == Icons.search) {
                setState(() {
                  _icon = Icon(
                    Icons.close,
                    size: 20,
                    color: Colors.black,
                  );
                });
              } else {
                setState(() {
                  _icon = Icon(
                    Icons.search,
                    size: 20,
                    color: Colors.black,
                  );
                });
              }
            },
          ),
        ],
      ),
      drawer: Drawer(),
      floatingActionButton: FloatingActionButton(
        // backgroundColor: AppColors.backgrouondWellcome,
        onPressed: () {
          print('object');
        },
        child: Icon(Icons.filter_list_rounded),
      ),
    );
  }
}
