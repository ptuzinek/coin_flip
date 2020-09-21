import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[900],
          title: Text('Coin Flip'),
        ),
        body: CoinPage(),
      ),
    ),
  );
}

class CoinPage extends StatefulWidget {
  @override
  _CoinPageState createState() => _CoinPageState();
}

class _CoinPageState extends State<CoinPage> {
  int coinSide = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red[900],
      child: Column(
        children: [
          SizedBox(
            height: 20.0,
          ),
          Center(
            child: Text(
              'Click the Coin to flip it',
              style: TextStyle(
                fontSize: 25.0,
              ),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  coinSide = Random().nextInt(2) + 1;
                });
              },
              child: Image.asset('images/euro$coinSide.png'),
            ),
          ),
        ],
      ),
    );
  }
}
