import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _count =0;
  void _incrementCount() {
      setState(() {
      _count++;
      _checkAndShowDialog();
    });
  }
  void _decrementCount() {
    setState(() {
      if (_count > 0) {
        _count--;
        _checkAndShowDialog();
      }
    });
  }

  void _checkAndShowDialog() {
    if (_count >= 5) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Button pressed $_count times."),
            actions: <Widget>[
              TextButton(
                child: Text("Close"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Counter App"),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Text("Count",style: TextStyle(fontSize: 35),),
          Text('$_count',style: TextStyle(fontSize: 100),),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: _incrementCount, child: Icon(Icons.add)),
            SizedBox(width: 10,),
            ElevatedButton(onPressed: _decrementCount, child: Icon(Icons.remove)),
          ],
        )
        ],
      ),
    );
  }
}



