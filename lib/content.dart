import 'package:flutter/material.dart';

class ContentBox extends StatefulWidget {
  ContentBox({Key? key, required this.content}) : super(key: key);
  Widget content;

  @override
  State<ContentBox> createState() => _ContentBoxState();
}

class _ContentBoxState extends State<ContentBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: widget.content,
    );
  }
}
