// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:fv_calculator/calculator.dart';
import 'package:fv_calculator/content.dart';
import 'package:fv_calculator/credit.dart';
import 'package:fv_calculator/options.dart';

List<Widget> listOptions() {
  return <Widget>[
    ContentBox(content: Calculator()),
    ContentBox(content: Options()),
    ContentBox(content: Credit()),
  ];
}
