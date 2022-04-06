import 'dart:async';
import 'dart:io';
import 'dart:js';
import 'views.dart';

import 'package:flutter/material.dart';
import 'package:progress_app/views.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'learingApp',
    home: learingApp(),
  ));
}

class learingApp extends StatelessWidget {
  const learingApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Route'),
      ),
      body: Center(
        // this is the body of the app and it is where you put all the things your app might need
        child: ListView(
          // this listView House everything you see on the screen
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            Container(
              height: 50,
              color: Colors.amber[600],
              child: const Center(
                child: Text('Detault small text '),
              ),
            ),
            Container(
              height: 50,
              color: Colors.amber[200],
              child: const Center(
                  child: Text(
                ' medium lineThrough text ',
                style: TextStyle(
                  decoration: TextDecoration.lineThrough,
                ),
              )),
            ),
            Container(
              height: 50,
              color: Colors.blue,
              child: Text(
                ' large text align to the left of its container  ',
                textAlign: TextAlign.left,
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              height: 50,
              color: Colors.white70,
              child: const Center(
                child: Text(' large Underline text',
                    style: TextStyle(
                        decorationStyle: TextDecorationStyle.wavy,
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            Container(
              height: 50,
              color: Colors.brown,
              child: const Center(
                child: Text(
                  ' Extralarge Text',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            // Container(
            //   child: ElevatedButton(
            //     child: const Text('Open route'),
            //     onPressed: () {
            //       Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //             builder: (context) => const SecondRoute()),
            //       );
            //     },
            //   ),
            // ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(height: 60),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const SecondRoute()),
          );
        },
        child: const Icon(Icons.arrow_forward_outlined),
      ),
    );
  }
}




/* void main() {
  runApp(learingApp());
}

class learingApp extends StatefulWidget {
  const learingApp({Key? key}) : super(key: key);

  @override
  State<learingApp> createState() => _learingAppState();
}

class _learingAppState extends State<learingApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // materialApp is a libary by used in flutter that we can easily adjust to sute our derire need

      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 219, 207,
            203), // this is the backgroung color of the whole screen
        appBar: AppBar(
          // as the name imples appbar it is the topmost horizontal bar of the app where you all the name of the screen , a menu Icon , next icon , back icon , share nad other icons or message you might want to pass to you user
          title: Center(
            child: Text('Learing basic of Flutter ( App Bar)'),
          ),
          backgroundColor: Colors.blueGrey,
        ),
        body: Center(
          // this is the body of the app and it is where you put all the things your app might need
          child: ListView(
            // this listView House everything you see on the screen
            padding: const EdgeInsets.all(8),
            children: <Widget>[
              Container(
                height: 50,
                color: Colors.amber[600],
                child: const Center(
                  child: Text('Detault small text '),
                ),
              ),
              Container(
                height: 50,
                color: Colors.amber[200],
                child: const Center(
                    child: Text(
                  ' medium lineThrough text ',
                  style: TextStyle(
                    decoration: TextDecoration.lineThrough,
                  ),
                )),
              ),
              Container(
                height: 50,
                color: Colors.blue,
                child: Text(
                  ' large text align to the left of its container  ',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                height: 50,
                color: Colors.white70,
                child: const Center(
                  child: Text(' large Underline text',
                      style: TextStyle(
                          decorationStyle: TextDecorationStyle.wavy,
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.bold)),
                ),
              ),
              Container(
                height: 50,
                color: Colors.brown,
                child: const Center(
                  child: Text(
                    ' Extralarge Text',
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          child: Container(height: 60),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const views()),
            );
          },
          child: const Icon(Icons.arrow_forward_outlined),
        ),
      ),
    );
  }
}
 */