import 'package:flutter/material.dart';

class MakeItRain extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MakeItRainState();
  }
}

class MakeItRainState extends State<MakeItRain> {
  int _moneyCounter = 0;

  void _rainMoney() {
    //Important - setState is called each time we need to update the UI
    setState(() {
      _moneyCounter = _moneyCounter + 100;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      backgroundColor: Colors.black12,
      appBar: new AppBar(
        title: new Text("Make It Rain"),
        backgroundColor: Colors.lightGreen,
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            //title
            new Expanded(
              child: new Center(
                child: new Text(
                  "Get Rich!",
                  style: new TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 45.9,
                  ),
                ),
              ),
            ),

            new Expanded(
              child: new Center(
                child: new Text(
                  '\$$_moneyCounter',
                  style: new TextStyle(
                    color: _moneyCounter > 2000 ? Colors.blue : Colors.red,
                    fontSize: 46.9,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),

            new Expanded(
              child: new Center(
                child: new TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.green,
                    padding: const EdgeInsets.all(16.0),
                    primary: Colors.black,
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: _rainMoney,
                  child: new Text(
                    "Let It Rain!",
                    style: new TextStyle(
                      fontSize: 19.9,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//expanded is A widget that expands a child of a Row, Column, or Flex so that the child fills the available space.
// expanded used to fill space between child of a column.
// state is a data that widget used .

