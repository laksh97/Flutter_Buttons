import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: MyApp(title: 'Flutter Demo Home Page'),
    ),
  );
}

class MyApp extends StatefulWidget {
  MyApp({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _name = "Hello World";

  //  void _onClick() {
  //   setState(() {
  //     _name = "Hello Jay";
  //   });
  // }

  // void _onClick(String value) {
  //   setState(() {
  //     _name = value;
  //   });
  // }

  void _onClick() {
    setState(() {
      _name = DateTime.now().toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                _name,
              ),
              SizedBox(
                height: 30,
                width: 30,
              ),
              ElevatedButton(
                onPressed: _onClick,
                child: Text('Click Me!'),
              ),
              SizedBox(
                height: 30,
                width: 30,
              ),
              TextButton(
                onPressed: _onClick,
                child: Text('Click Me!'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
