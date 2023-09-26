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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flexible & Expanded Widget"),
      ),
      body: Column(
        children: [
          Flexible(
              flex: 2,
              child: Container(
            color: Colors.amber,

          )),
          Flexible(
              flex: 1,
              child: Container(
            color: Colors.red,

          )),
          Flexible(
              flex: 2,
              child: Container(
            color: Colors.blue,

          )),
          Expanded(
              flex: 3,
              child: Container(
            color: Colors.deepOrangeAccent,
          ))
        ],
      ),
    );
  }
}
