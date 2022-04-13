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
        backgroundColor: Colors.greenAccent,
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
