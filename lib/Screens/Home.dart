// import 'package:flutter/material.dart';

// class Home extends StatefulWidget {
//   Home({Key? key}) : super(key: key);

//   @override
//   State<Home> createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(

// ignore_for_file: prefer_const_constructors

//       ),
//       );
//   }
// }
import 'package:flutter/material.dart';
import 'package:vehicle_master/Comman%20components/colors.dart';
import 'package:vehicle_master/Screens/Add.dart';
import 'package:vehicle_master/Screens/FAQs.dart';
import 'package:vehicle_master/Screens/Homepage.dart';
import 'package:vehicle_master/Screens/Profile.dart';
import 'package:vehicle_master/Screens/Quiz.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Quiz(),
    Add(backbutton: false),
    FAQ(),
    Profile()
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: MunshiColor().munshiWhite,
          currentIndex: _selectedIndex,
          selectedItemColor: MunshiColor().munshiBlue,
          onTap: _onItemTapped,
          // ignore: prefer_const_literals_to_create_immutables
          items: <BottomNavigationBarItem>[
            // ignore: prefer_const_constructors
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            // ignore: prefer_const_constructors
            BottomNavigationBarItem(
              icon: Icon(Icons.quiz_outlined),
              label: "Quiz",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: "Add",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.live_help_outlined),
              label: "FAQs",
            ),
            // ignore: prefer_const_constructors
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_outlined),
              label: "Profile",
            ),
          ]),
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }
}
