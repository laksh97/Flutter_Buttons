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
  int _value = 0;

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

  void _add() {
    setState(() {
      _value++;
    });
  }

  void _subtract() {
    setState(() {
      _value--;
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
                child: Text('ElevatedButton!'),
              ),
              SizedBox(
                height: 30,
                width: 30,
              ),
              TextButton(
                onPressed: _onClick,
                child: Text('TextButton!'),
              ),
              SizedBox(
                height: 30,
                width: 30,
              ),
              Text(
                "Value is $_value",
              ),
              IconButton(
                onPressed: _add,
                icon: Icon(Icons.add),
              ),
              SizedBox(
                height: 30,
                width: 30,
              ),
              IconButton(
                onPressed: _subtract,
                icon: Icon(Icons.remove),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
