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
        title:const Center(child: Text('Profile',style: TextStyle(color: Colors.white),)),
      ),
      body: const Center(
        child: Column(
         mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Icon(Icons.account_circle,size: 45,color: Colors.green,),
            Text("Jhon Doe",style:TextStyle(color: Colors.green,fontSize: 22),),
            Text("Flutter Batch 4",style:TextStyle(color: Colors.blueAccent,fontSize: 15),),

          ],
        ),
      ),
    );
  }
}
