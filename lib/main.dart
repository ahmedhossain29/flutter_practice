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
      body:  Center(
        child: Column(
         mainAxisAlignment: MainAxisAlignment.center,

          children: [
            RichText(text:const TextSpan(text: 'Hello ',style: TextStyle(fontSize: 35,color: Colors.deepOrangeAccent),children: [

              TextSpan(text: 'World',style: TextStyle(fontSize: 25,color: Colors.blueAccent)),
            ]),),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(decoration: InputDecoration(
                label: Text("Email"),
                hintText: "Enter Email Address",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
              ),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(decoration: InputDecoration(
                label: Text("Password"),
                hintText: "Password",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
              ),),
            ),

            ElevatedButton(onPressed: (){}, child: Text("Log in")),
            TextButton(onPressed: (){}, child: Text("Forget password?")),
            ElevatedButton(onPressed: (){}, child: Text("Create New Account")),


          ],
        ),
      ),
    );
  }
}
