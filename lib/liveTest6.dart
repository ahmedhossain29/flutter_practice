import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
    debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title:const Center(child: Text('My Shopping List',)),
        actions: [Icon(Icons.shopping_cart)],
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.card_travel_sharp),
            title: Text("travel"),
          ),
          ListTile(
            leading: Icon(Icons.sports_baseball),
            title: Text("BaseBall"),
          ),
          ListTile(
            leading: Icon(Icons.sports_basketball),
            title: Text("Basketball"),
          ),
          ListTile(
            leading: Icon(Icons.sports_cricket),
            title: Text("Cricket"),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Profile"),
          ),
        ],
      )
    );
  }
}
