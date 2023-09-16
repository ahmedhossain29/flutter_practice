import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Photo Gallery"),
      ),
      body: SingleChildScrollView(
        //scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Text("Welcome to My Photo Gallery!",style: TextStyle(fontSize: 25),),
              SizedBox(height: 5,),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                  labelText: "Search for photos...",
                ),
              ),
              GridView.count(
                shrinkWrap: true,
                primary: false,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 20,
                mainAxisSpacing:20,
                crossAxisCount: 3,
                children: <Widget>[
                  Container(
                    height: 200,
                    width: 200,
                    child: Column(

                      children: [
                        InkWell(child: Image.network("https://t4.ftcdn.net/jpg/00/97/58/97/360_F_97589769_t45CqXyzjz0KXwoBZT9PRaWGHRk5hQqQ.jpg",height: 70,),
                        onTap: (){
                          final snackBar=SnackBar(content: Text("Photo no 0"),);
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        },
                        ),
                        SizedBox(height: 5,),
                        Text("Photo 0",style: TextStyle(fontSize: 15),),
                      ],
                    )
                  ),
                  Container(
                      height: 200,
                      width: 200,
                      child: Column(

                        children: [
                          InkWell(child: Image.network("https://images.pexels.com/photos/458976/pexels-photo-458976.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",height: 70,),
                          onTap: (){
                            final snackBar=SnackBar(content: Text("Photo no 1"),);
                            ScaffoldMessenger.of(context).showSnackBar(snackBar);
                          },
                          ),
                          SizedBox(height: 5,),
                          Text("Photo 1",style: TextStyle(fontSize: 15),),
                        ],
                      )
                  ),
                  Container(
                      height: 200,
                      width: 200,
                      child: Column(

                        children: [
                          InkWell(child: Image.network("https://images.pexels.com/photos/247502/pexels-photo-247502.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",height: 70,),
                          onTap: (){
                            final snackBar=SnackBar(content: Text("Photo no 2"),);
                            ScaffoldMessenger.of(context).showSnackBar(snackBar);
                          },
                          ),
                          SizedBox(height: 5,),
                          Text("Photo 2",style: TextStyle(fontSize: 15),),
                        ],
                      )
                  ),
                  Container(
                      height: 200,
                      width: 200,
                      child: Column(

                        children: [
                          InkWell(child: Image.network("https://images.pexels.com/photos/2295744/pexels-photo-2295744.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",height: 70,),
                          onTap: (){
                            final snackBar=SnackBar(content: Text("Photo no 3"),);
                            ScaffoldMessenger.of(context).showSnackBar(snackBar);
                          },
                          ),
                          SizedBox(height: 5,),
                          Text("Photo 3",style: TextStyle(fontSize: 15),),
                        ],
                      )
                  ),
                  Container(
                      height: 200,
                      width: 200,
                      child: Column(

                        children: [
                          InkWell(child: Image.network("https://images.pexels.com/photos/596792/pexels-photo-596792.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",height: 70,),
                          onTap: (){
                            final snackBar=SnackBar(content: Text("Photo no 4"),);
                            ScaffoldMessenger.of(context).showSnackBar(snackBar);
                          },
                          ),
                          SizedBox(height: 5,),
                          Text("Photo 4",style: TextStyle(fontSize: 15),),
                        ],
                      )
                  ),
                  Container(
                      height: 200,
                      width: 200,
                      child: Column(

                        children: [
                          InkWell(child: Image.network("https://images.pexels.com/photos/5826478/pexels-photo-5826478.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",height: 70,),
                          onTap: (){
                            final snackBar=SnackBar(content: Text("Photo no 5"),);
                            ScaffoldMessenger.of(context).showSnackBar(snackBar);
                          },
                          ),
                          SizedBox(height: 5,),
                          Text("Photo 5",style: TextStyle(fontSize: 15),),
                        ],
                      )
                  ),

                ],
              ),
              SizedBox(height: 10,),
              Text("data"),
              ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.transparent,
                 backgroundImage: NetworkImage("https://t4.ftcdn.net/jpg/00/97/58/97/360_F_97589769_t45CqXyzjz0KXwoBZT9PRaWGHRk5hQqQ.jpg"),
                ),
                title: Text("Photo 1"),
                subtitle: Text("Description for Photo 1"),
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.transparent,
                  backgroundImage: NetworkImage("https://images.pexels.com/photos/458976/pexels-photo-458976.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                ),
                title: Text("Photo 2"),
                subtitle: Text("Description for Photo 2"),
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.transparent,
                  backgroundImage: NetworkImage("https://images.pexels.com/photos/247502/pexels-photo-247502.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                ),
                title: Text("Photo 3"),
                subtitle: Text("Description for Photo 3"),
              ),

              Ink(
                  decoration: const ShapeDecoration(
                    color: Colors.blueAccent,
                    shape: CircleBorder(),
                  ),
                  child: IconButton(
                    icon: Icon(
                      Icons.upload,color: Colors.white,
                    ),
                    iconSize: 30,
                    onPressed: () {
                      final snackBar=SnackBar(content: Text("Photo Uploaded Sucesfully"),);
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
