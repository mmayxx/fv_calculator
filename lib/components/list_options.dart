// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:fv_calculator/calculator.dart';
import 'package:fv_calculator/content.dart';

List<Widget> listOptions() {
  return <Widget>[
    ContentBox(content: Calculator()),
    ContentBox(
        content: Text(
      'contain[1]',
    )),
    ContentBox(
        content: Text(
      'contain[2]',
    )),
  ];
}
