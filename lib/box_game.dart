import 'package:flutter/material.dart';
import 'box_drag.dart';

class BoxGame extends StatefulWidget {
  @override
  _BoxGameState createState() => _BoxGameState();
}

class _BoxGameState extends State<BoxGame> {
  int acceptedData = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          BoxDrag(),
          Positioned(
            bottom: 20,
            left: 100,
            child: DragTarget(
              builder: (BuildContext context, List<dynamic> accepted,
                      List<dynamic> rejected) =>
                  Container(
                height: 200.0,
                width: 200.0,
                decoration: BoxDecoration(color: Colors.pink[300]),
                child: Center(
                    child: Text(
                  acceptedData.toString(),
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )),
              ),
              onAccept: (int data) {
                acceptedData = acceptedData + data;
              },
            ),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: FloatingActionButton(
              backgroundColor: Colors.green,
              child: Text(
                'Reset',
                style: TextStyle(fontSize: 15.0),
              ),
              onPressed: () {
                setState(() {
                  acceptedData = 0;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
