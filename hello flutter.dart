import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'New',
    home: Scaffold(
      appBar: AppBar(
          title: Text('CODE BASE'), backgroundColor: const Color(0xFF3c8093d)),
      body: HelloCircle(),
    ),
  ));
}

class HelloCircle extends StatelessWidget {
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      color:  Colors.redAccent,
      height: 300.0,
      width: 300.0,
      child: Center(
        child: Text(
          'flutter code base',
          style: TextStyle(fontSize: 30.0,color: Colors.white),
          textAlign: TextAlign.end,

        ),
      ),
    ));
  }
}
