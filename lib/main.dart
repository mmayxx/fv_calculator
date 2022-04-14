// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fv_calculator/components/list_options.dart';
import 'package:fv_calculator/components/sidebar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  void _onOptionSelect(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      drawer: Aside(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: ToggleAside(),
        foregroundColor: Colors.black,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () => null, //user_route
              child: CircleAvatar(
                radius: 15,
                backgroundColor: Colors.red,
                child: ClipOval(
                    child: Icon(
                  Icons.person,
                  color: Colors.white,
                )),
              ),
            ),
          )
        ],
        systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.black),
      ),
      body: Column(
        children: <Widget>[
          Expanded(child: listOptions().elementAt(_selectedIndex)),
          BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(Icons.calculate), label: 'calculate'),
              BottomNavigationBarItem(icon: Icon(Icons.list), label: 'options'),
              BottomNavigationBarItem(icon: Icon(Icons.info), label: 'info')
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.red,
            onTap: _onOptionSelect,
            elevation: 0,
          ),
        ],
      ),
    );
  }
}
