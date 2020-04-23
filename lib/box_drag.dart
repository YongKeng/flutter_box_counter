import 'package:flutter/material.dart';

class BoxDrag extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BoxDragState();
  }
}

class _BoxDragState extends State<BoxDrag> {
  double width = 100.0, height = 100.0;
  Offset position;

  @override
  void initState() {
    super.initState();
    position = Offset(150.0, height - 20);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          left: position.dx,
          top: position.dy - height + 20,
          child: Draggable(
            data: 1,
            child: Container(
              width: width,
              height: height,
              color: Colors.pink[200],
              child: Center(
                child: Text(
                  "Drag Me Downward",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
            feedback: Material(
              child: Container(
                child: Center(
                  child: Text(
                    "Drag Me",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                color: Colors.pink[100],
                width: width,
                height: height,
              ),
            ),
            onDraggableCanceled: (Velocity velocity, Offset offset) {
              setState(() => position = offset);
            },
          ),
        ),
      ],
    );
  }
}
