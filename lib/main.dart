import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
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

  Widget _portaitMode(){
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context,index){
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: 150,
          child: Image.network("https://via.placeholder.com/150"),
        ),
      );
    });
  }

  Widget _landscapeMode(){
    return GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,

      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
    ),
        itemCount: 10,
        itemBuilder: (context,index){
      return SizedBox(
        child: Image.network("https://via.placeholder.com/150"),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home"),),
    body: OrientationBuilder(
      builder: (context,orientation){
        if(orientation==Orientation.portrait){
          return _portaitMode();
        }else{
          return _landscapeMode();
        }
      },
    ),
    );
  }
}
