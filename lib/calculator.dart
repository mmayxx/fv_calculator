// ignore_for_file: prefer_const_constructors
import 'dart:math';

import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final TextEditingController _pv = TextEditingController(); // present val
  final TextEditingController _roi =
      TextEditingController(); // rate of interest
  final TextEditingController _n =
      TextEditingController(); // no of periods in years
  bool isValid = false;
  _futureValue() {
    try {
      if (_pv.text != '' && _roi.text != '' && _n.text != '') {
        double _presentVal = double.parse(_pv.text);
        double _roiVal = double.parse(_roi.text);
        double _nVal = double.parse(_n.text);
        isValid = true;
        return (_presentVal * pow(1 + _roiVal / 100, _nVal)).toStringAsFixed(2);
      } else {
        isValid = false;
        return "Enter all fields correctly";
      }
    } on Exception catch (e) {
      if (e is FormatException) {
        return "Invalid input format";
      }
    }
  }

  @override
  void dispose() {
    super.dispose();
    _pv.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Color(0xFFFFF7F7),
        child: Column(
          children: [
            // result
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.125,
              margin: EdgeInsets.only(left: 18, right: 18, bottom: 32, top: 32),
              alignment: Alignment.center,
              child: Text(
                _futureValue().toString(),
                style: TextStyle(
                    fontSize: isValid ? 30 : 18,
                    fontWeight: FontWeight.bold,
                    color: isValid ? Colors.greenAccent : Colors.red),
              ),
            ),
            // present val
            Container(
              decoration: BoxDecoration(color: Color(0xFFFFFFFF)),
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 0),
              margin: EdgeInsets.only(left: 18, right: 18, bottom: 22),
              child: Material(
                elevation: 2,
                borderRadius: BorderRadius.all(Radius.circular(5)),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  autocorrect: false,
                  controller: _pv,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 15, right: 15),
                      border: InputBorder.none,
                      hintText: 'PV / starting amount',
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent))),
                ),
              ),
            ),
            // interest rate
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  color: Color(0xFFFFFFFF)),
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 0),
              margin: EdgeInsets.only(left: 18, right: 18, bottom: 22),
              child: Material(
                elevation: 2,
                borderRadius: BorderRadius.all(Radius.circular(5)),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  autocorrect: false,
                  controller: _roi,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 15, right: 15),
                      border: InputBorder.none,
                      hintText: 'ROI',
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent))),
                ),
              ),
            ),

            // no of periods
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  color: Color(0xFFFFFFFF)),
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 0),
              margin: EdgeInsets.only(left: 18, right: 18, bottom: 22),
              child: Material(
                elevation: 2,
                borderRadius: BorderRadius.all(Radius.circular(5)),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  autocorrect: false,
                  controller: _n,
                  decoration: InputDecoration(
                      hintText: 'no of periods',
                      contentPadding: EdgeInsets.only(left: 15, right: 15),
                      border: InputBorder.none,
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent))),
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () => [_futureValue(), setState(() {})],
                child: Text('calculate'),
                style: ElevatedButton.styleFrom(
                    primary: Colors.redAccent,
                    padding:
                        EdgeInsets.symmetric(horizontal: 100, vertical: 10),
                    textStyle:
                        TextStyle(fontSize: 21, fontWeight: FontWeight.bold)))
          ],
        ),
      ),
    );
  }
}
