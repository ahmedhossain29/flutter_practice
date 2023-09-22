
import 'package:flutter/material.dart';
import 'package:flutter_practice/assignment_6.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home"),),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 5),
                borderRadius: BorderRadius.all(Radius.circular(15),),
              ),
            height: 300,
              child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index){
              return ListTile(
                leading: Icon(Icons.person),
                title: Text("Hossain Ahmed"),
                subtitle: Text("Flutter Developer "),
                trailing: Icon(Icons.add_call),
              );
            },
            ),),

            SizedBox(height: 10,),

            Container(
              height: 300,
              decoration: BoxDecoration(border: Border.all(width: 5),
              borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              child: Column(
                children: [
                  Container(
                    child: Icon(Icons.person,size: 100,),
                  ),
                  Expanded(child: Container(
                    child: ListView.builder(
                      itemCount: 15,
                      itemBuilder: (context, index){
                        return  ListTile(
                          leading: Icon(Icons.person),
                          title: Text("Hossain Ahmed"),
                          trailing: Icon(Icons.phone),
                          subtitle: Text("Flutter Developer"),
                        );
                      },
                    )
                  ),),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}

