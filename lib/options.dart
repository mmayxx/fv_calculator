import 'package:flutter/material.dart';

class Options extends StatefulWidget {
  Options({Key? key}) : super(key: key);

  @override
  State<Options> createState() => _OptionsState();
}

class _OptionsState extends State<Options> {
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
                      Container(
                          padding: EdgeInsets.all(10),
                          child: Icon(
                            Icons.info_outline_rounded,
                            color: Colors.blue,
                          )),
                      Expanded(
                        child: Text(
                          'currently this calculator only supports "end" payment period option',
                        ),
                      )
                    ]),
              ),
            )
          ]),
    );
  }
}
