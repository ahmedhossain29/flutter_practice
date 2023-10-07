import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int itemCount = 0;
  double unitPrice = 10.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [Icon(Icons.search_rounded)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const Row(
              children: [
                Text("My Bag",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
              ],
            ),
            const SizedBox(height: 10,),
            Row(

              children: [
              Card(
                elevation: 10,
                child: Row(
                  children: [
                    SizedBox(
                      child: Image.network("https://www.picture-organic-clothing.com/dw/image/v2/BGFP_PRD/on/demandware.static/-/Sites-poc-master-catalog/default/dw90184c20/images/recadre/MSW380_C_01.jpg?sw=1200&sh=1200&sm=fit",height: 120,width: 120,),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                         const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Pullover",style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold),),
                            SizedBox(width: 160,),
                            Icon(Icons.more_vert),
                          ],
                        ),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.start,

                          children: [
                            Text("Color:Black",),
                            SizedBox(width: 10,),
                            Text("Size:L"),
                          ],
                        ),
                        Row(

                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            RawMaterialButton(
                              onPressed: () {},
                              elevation: 2,
                              fillColor: Colors.white,
                              child: Icon(
                                Icons.remove,
                                size: 25.0,
                              ),
                              padding: EdgeInsets.all(8),
                              shape: CircleBorder(),
                            ),
                            Text("1"),
                            RawMaterialButton(
                              onPressed: () {},
                              elevation: 2,
                              fillColor: Colors.white,
                              child: Icon(
                                Icons.add,
                                size: 25.0,
                              ),
                              padding: EdgeInsets.all(8),
                              shape: CircleBorder(),
                            ),
                            SizedBox(width: 1,),
                            Text("51\$",style: TextStyle(fontSize: 20),),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),


            ],),
            SizedBox(height: 10,),
            Row(children: [
              Card(
                elevation: 10,
                child: Row(
                  children: [
                    SizedBox(
                      child: Image.network("https://img.freepik.com/free-psd/isolated-white-t-shirt-front-view_125540-1194.jpg?w=900&t=st=1696698341~exp=1696698941~hmac=2773a9cf3d773cd4ab6ece750e8f180237a69c576984a1bdab376b5c525b6874",height: 120,width: 110,),
                    ),
                    Column(
                      children: [
                        const Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("T-Shirt",style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold),),
                            SizedBox(width: 185,),
                            Icon(Icons.more_vert),
                          ],
                        ),
                        const Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Color:Black"),
                            SizedBox(width: 10,),
                            Text("Size:L"),
                          ],
                        ),
                        Row(

                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            RawMaterialButton(
                              onPressed: () {},
                              elevation: 2,
                              fillColor: Colors.white,
                              child: Icon(
                                Icons.remove,
                                size: 25.0,
                              ),
                              padding: EdgeInsets.all(10),
                              shape: CircleBorder(),
                            ),
                            Text("1"),
                            RawMaterialButton(
                              onPressed: () {},
                              elevation: 2,
                              fillColor: Colors.white,
                              child: Icon(
                                Icons.add,
                                size: 25.0,
                              ),
                              padding: EdgeInsets.all(10),
                              shape: CircleBorder(),
                            ),
                            SizedBox(width: 15,),
                            Text("30\$",style: TextStyle(fontSize: 20)),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),


            ],),
            SizedBox(height: 10,),
            Row(children: [
              Card(
                elevation: 10,
                child: Row(
                  children: [
                    SizedBox(
                      child: Image.network("https://i8.amplience.net/i/jpl/jd_HR4923_a?qlt=92&w=600&h=765&v=1&fmt=auto",height: 120,width: 120,),
                    ),
                    Column(
                      children: [
                        const Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Sport Dress",style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold),),
                            SizedBox(width: 130,),
                            Icon(Icons.more_vert),
                          ],
                        ),
                        const Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Color:Black"),
                            SizedBox(width: 10,),
                            Text("Size:L"),
                          ],
                        ),
                        Row(

                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            RawMaterialButton(
                              onPressed: () {},
                              elevation: 2,
                              fillColor: Colors.white,
                              child: Icon(
                                Icons.remove,
                                size: 25.0,
                              ),
                              padding: EdgeInsets.all(10),
                              shape: CircleBorder(),
                            ),
                            Text("1"),
                            RawMaterialButton(
                              onPressed: () {},
                              elevation: 2,
                              fillColor: Colors.white,
                              child: Icon(
                                Icons.add,
                                size: 25.0,
                              ),
                              padding: EdgeInsets.all(10),
                              shape: CircleBorder(),
                            ),
                            SizedBox(width: 15,),
                            Text("43\$",style: TextStyle(fontSize: 20)),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],),
            SizedBox(height: 220,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text("Total amount:"),
              Text("124\$",style: TextStyle(fontSize: 20)),
            ],),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: const Text('Congratulation'),

                ),
              );

            }, child: Text("CHECK OUT"),style:ElevatedButton.styleFrom(
              fixedSize: Size(350, 50),
                backgroundColor: Colors.red,
                side: BorderSide(
                    width: 1,
                    ),
                shape: RoundedRectangleBorder(
                    borderRadius:
                    BorderRadius.circular(
                      30,
                    ))),),



          ],
        ),
      ),
    );
  }
}
