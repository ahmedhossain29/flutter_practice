
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
        backgroundColor: Colors.green,
        title:const Center(child: Text('Home',style: TextStyle(color: Colors.white),)),
        elevation: 70,
        toolbarHeight: 100,
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.search)],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Text('data'),
            RichText(text: TextSpan(children: [TextSpan(text: 'Name'),TextSpan(text: 'Hello')]),)

          ],
        ),
      ),
    );
  }
}
