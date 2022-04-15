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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins'),
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
        backgroundColor: Color(0xff5c44d4),
        elevation: 0.5,
        leading: ToggleAside(),
        foregroundColor: Colors.white,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () => showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.19,
                      alignment: Alignment.center,
                      child: Text(
                        'Sign in to confirm',
                        style: TextStyle(color: Colors.blue, fontSize: 21),
                      ),
                    );
                  }), //user_route
              child: CircleAvatar(
                radius: 15,
                backgroundColor: Color.fromARGB(255, 124, 76, 255),
                child: ClipOval(
                    child: Icon(
                  Icons.person,
                  color: Colors.white,
                )),
              ),
            ),
          )
        ],
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
            elevation: 15,
          ),
        ],
      ),
    );
  }
}
