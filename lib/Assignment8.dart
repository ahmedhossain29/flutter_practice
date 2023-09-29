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
  @override
  Widget build(BuildContext context) {
    final isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [
            if(isPortrait)
              Column(
                children: [
                 const Padding(
                    padding: EdgeInsets.all(8),
                    child: Center(
                      child: CircleAvatar(
                        radius: 200,
                        backgroundImage: AssetImage('Image/camera.png'),
                        //child: Image.asset('Image/camera.png',height: 200,width: 200,),
                      ),

                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text("John Doe",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  ),
                  const Text("It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. "),

                  GridView.count(
                    shrinkWrap: true,
                    primary: false,
                    padding: const EdgeInsets.all(20),
                    crossAxisSpacing: 20,
                    mainAxisSpacing:20,
                    crossAxisCount: 3,
                    children: <Widget>[
                      SizedBox(
                        height: 300,
                        width: 300,
                        child: Image.asset('Image/camera.png',),
                      ),
                      SizedBox(
                        height: 300,
                        width: 300,
                        child: Image.asset('Image/camera.png',),
                      ),
                      SizedBox(
                        height: 300,
                        width: 300,
                        child: Image.asset('Image/camera.png',),
                      ),
                      SizedBox(
                        height: 300,
                        width: 300,
                        child: Image.asset('Image/camera.png',),
                      ),
                      SizedBox(
                        height: 300,
                        width: 300,
                        child: Image.asset('Image/camera.png',),
                      ),
                      SizedBox(
                        height: 300,
                        width: 300,
                        child: Image.asset('Image/camera.png',),
                      ),

                    ],
                  ),
                ],
              ),
            if(!isPortrait)
              Row(
                children: [
                  const CircleAvatar(
                    radius: 150,
                    backgroundImage: AssetImage('Image/camera.png'),
                    //child: Image.asset('Image/camera.png',height: 200,width: 200,),
                  ),
                  Expanded(child: Column(
                    children: [
                      const Row(
                        children: [
                           Padding(
                             padding: EdgeInsets.all(5.0),
                             child: Text("John Doe",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                           ),
                        ],
                      ),
                      const Text("It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout."),
                      Column(
                        children: [
                          GridView.count(
                            shrinkWrap: true,
                            primary: false,
                            padding: const EdgeInsets.all(20),
                            crossAxisSpacing: 20,
                            mainAxisSpacing:20,
                            crossAxisCount: 3,
                            children: <Widget>[
                              SizedBox(
                                height: 300,
                                width: 300,
                                child: Image.asset('Image/camera.png',),
                              ),
                              SizedBox(
                                height: 300,
                                width: 300,
                                child: Image.asset('Image/camera.png',),
                              ),
                              SizedBox(
                                height: 300,
                                width: 300,
                                child: Image.asset('Image/camera.png',),
                              ),
                              SizedBox(
                                height: 300,
                                width: 300,
                                child: Image.asset('Image/camera.png',),
                              ),
                              SizedBox(
                                height: 300,
                                width: 300,
                                child: Image.asset('Image/camera.png',),
                              ),
                              SizedBox(
                                height: 300,
                                width: 300,
                                child: Image.asset('Image/camera.png',),
                              ),

                            ],
                          ),

                        ],
                      ),
                    ],
                  ))
                ],
              ),
                 ],
               ),
      ),



    );
  }
}
