import 'dart:html';

import 'package:flutter/material.dart';
import 'package:progress_app/layout.dart';

import 'layout.dart';

class SecondRoute extends StatefulWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  State<SecondRoute> createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoute> {
  var value = MainAxisAlignment.spaceEvenly;

  double _volume = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('views screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: value,
          children: [
            Container(
              child: TextButton(
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all<Color>(Colors.black),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue),
                ),
                onPressed: () {},
                child: Text('text Button'),
              ),
            ),
            Container(
              child: OutlinedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                      StadiumBorder()),
                  side: MaterialStateProperty.resolveWith<BorderSide>(
                      (Set<MaterialState> states) {
                    final Color color = states.contains(MaterialState.pressed)
                        ? Colors.red
                        : Colors.blue;
                    return BorderSide(color: color, width: 2);
                  }),
                ),
                onPressed: () {},
                child: Text('OutlinedButton with custom shape and border'),
              ),
            ),
            Container(
              child: TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.blue,
                  onSurface: Colors.red,
                ),
                onPressed: null,
                child: Text("cant't click "),
              ),
            ),
            Container(
              child: TextButton(
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                    overlayColor: MaterialStateProperty.resolveWith<Color?>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.hovered))
                          return Colors.blue.withOpacity(0.04);
                        if (states.contains(MaterialState.focused) ||
                            states.contains(MaterialState.pressed))
                          return Colors.blue.withOpacity(0.12);
                        return null; // Defer to the widget's default.
                      },
                    ),
                  ),
                  onPressed: () {},
                  child: Text('TextButton')),
            ),
            Container(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Go back!'),
              ),
            ),
            Container(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(elevation: 2),
                onPressed: () {},
                child: Text('ElevatedButton with custom elevations'),
              ),
            ),
            IconButton(
              icon: Icon(Icons.volume_up_sharp),
              tooltip: 'increase volume by  5',
              onPressed: () {
                setState(() {
                  _volume += 10;
                });
              },
            ),
            Text('volume: $_volume'),
            Container(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const layout()),
                  );
                },
                child: const Text('next'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
