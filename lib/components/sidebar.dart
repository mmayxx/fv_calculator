// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables
// ignore_for_file: avoid_returning_null_for_void
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Aside extends StatefulWidget {
  Aside({Key? key}) : super(key: key);

  @override
  State<Aside> createState() => _AsideState();
}

class _AsideState extends State<Aside> {
  final TextStyle _optionStyle = TextStyle(fontWeight: FontWeight.bold);
  bool _isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.75,
      child: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('mmayxx'),
              accountEmail: Text('github.com/mmayxx'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: ClipOval(
                  child: Icon(
                    Icons.person,
                    size: 35,
                    color: Colors.black,
                  ),
                ),
              ),
              decoration: BoxDecoration(color: Color(0xff5c44d4)),
            ),
            ListTile(
              leading: Icon(
                Icons.favorite,
                color: _isSelected ? Colors.red : null,
              ),
              title: Text(
                'favourites',
                style: _optionStyle,
              ),
              onTap: () => setState(() {
                _isSelected = !_isSelected;
              }),
            ),
            ListTile(
                leading: Icon(
                  Icons.share,
                ),
                title: Text(
                  'share',
                  style: _optionStyle,
                ),
                onTap: () => null),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text(
                'settings',
                style: _optionStyle,
              ),
              onTap: () => null,
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.policy),
              title: Text(
                'policies',
                style: _optionStyle,
              ),
              onTap: () => null,
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text(
                'exit',
                style: _optionStyle,
              ),
              onTap: () => SystemNavigator.pop(),
            ),
          ],
        ),
      ),
    );
  }
}

class ToggleAside extends StatefulWidget {
  ToggleAside({Key? key}) : super(key: key);

  @override
  State<ToggleAside> createState() => _ToggleAsideState();
}

class _ToggleAsideState extends State<ToggleAside> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () => Scaffold.of(context).openDrawer(),
        icon: Icon(Icons.list_rounded));
  }
}
