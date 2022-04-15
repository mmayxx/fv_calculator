import 'package:flutter/material.dart';

class Credit extends StatefulWidget {
  Credit({Key? key}) : super(key: key);

  @override
  State<Credit> createState() => _CreditState();
}

class _CreditState extends State<Credit> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Color(0xffffeebf)),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.19,
              child: Card(
                elevation: 5,
                color: Colors.white,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Color(0xff2bffa3),
                        child: ClipOval(
                            child: Icon(
                          Icons.person_pin_rounded,
                          color: Colors.white,
                        )),
                      ),
                      RichText(
                        text: TextSpan(
                            text: 'designed by - ',
                            style: TextStyle(
                                fontStyle: FontStyle.italic,
                                color: Colors.black),
                            children: <InlineSpan>[
                              TextSpan(
                                  text: 'mmayxx',
                                  style: TextStyle(
                                      fontSize: 21,
                                      color: Color(0xffff2640),
                                      fontStyle: FontStyle.normal))
                            ]),
                      ),
                    ]),
              ),
            )
          ]),
    );
  }
}
