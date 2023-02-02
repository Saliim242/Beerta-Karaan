import 'package:berta_karaan/screns/home_Screen.dart';
import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';

class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({Key? key}) : super(key: key);

  @override
  State<HiddenDrawer> createState() => _HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer> {
  List<ScreenHiddenDrawer> _screens = [];

  @override
  void initState(){
    super.initState();
    _screens = [
      ScreenHiddenDrawer(
          ItemHiddenMenu(
              name: "Home",
              baseStyle: TextStyle(),
              selectedStyle: TextStyle(),

          ),
        HomeScreen(),

      )
    ];

  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(

    screens: _screens,
    backgroundColorMenu: Color(0xffecf0f1),
    initPositionSelected: 0,
    leadingAppBar: Icon(
      Icons.menu_rounded,
      size: 25,
      color: Color(0xFF2f2f51),
    ),
    tittleAppBar: RichText(
      text: TextSpan(
          text: "Saluu House ",
          style: TextStyle(
            color: Color(0xffc0392b),
            fontSize: 25,
            fontFamily: "Pacifico",
            fontWeight: FontWeight.bold,
            letterSpacing: 0.2,
          ),
          // Farm
          children: [
            TextSpan(
              text: "Farm",
              style: TextStyle(
                color:  Color(0xFF2f2f51)  ,    //Color(0xff2ecc71),
                fontSize: 23,
                fontFamily: "Pacifico",
                fontWeight: FontWeight.bold,
                letterSpacing: 0.2,
              ),
            )
          ]),
    ),
    actionsAppBar: [
      IconButton(
        icon: Icon(
          Icons.phone,
          size: 25,
          color: Color(0xff3498db),
        ),
        onPressed: () {},
      ),
      IconButton(
        icon: Icon(
          Icons.logout,
          size: 25,
          color: Color(0xffc0392b),
        ),
        onPressed: () {},
      ),
    ],
    backgroundColorAppBar: Color(0xfff),
    elevationAppBar: 0,


    );
  }
}
