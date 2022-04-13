// ignore_for_file: prefer_const_constructors
// ignore_for_file: avoid_returning_null_for_void
import 'package:flutter/material.dart';

class Aside extends StatefulWidget {
  Aside({Key? key}) : super(key: key);

  @override
  State<Aside> createState() => _AsideState();
}

class _AsideState extends State<Aside> {
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
              accountEmail: Text('user@email.com'),
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
              decoration: BoxDecoration(color: Colors.red),
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text('favorites'),
              onTap: () => null,
            ),
            ListTile(
              leading: Icon(Icons.share),
              title: Text('share'),
              onTap: () => null,
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('settings'),
              onTap: () => null,
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.policy),
              title: Text('policies'),
              onTap: () => null,
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('exit'),
              onTap: () => null,
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
        icon: Icon(Icons.menu));
  }
}
