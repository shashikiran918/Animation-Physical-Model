import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(home:AnimatedPhysicalModalWidget()));

class AnimatedPhysicalModalWidget extends StatefulWidget {
  @override
  _AnimatedPhysicalModalWidgetState createState() =>
      _AnimatedPhysicalModalWidgetState();
}

class _AnimatedPhysicalModalWidgetState
    extends State<AnimatedPhysicalModalWidget> {
  bool _first = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        AnimatedPhysicalModel(
          duration: const Duration(milliseconds: 500),
          curve: Curves.fastOutSlowIn,
          elevation: _first ? 0 : 6.0,
          shape: BoxShape.rectangle,
          shadowColor: Colors.black,
          color: Colors.white,
          borderRadius: _first
              ? const BorderRadius.all(Radius.circular(0))
              : const BorderRadius.all(Radius.circular(10)),
          child: Container(
            height: 120.0,
            width: 120.0,
            color: Colors.blue[50],
            child: FlutterLogo(
              size: 60,
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        RaisedButton(
          child: const Text('Click Me!'),
          onPressed: () {
            setState(() {
              _first = !_first;
            });
          },
        ),
      ],
    );
  }
}