import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('News Feed'),
        ),
        body: ImageFeed(),
      ),
    );
  }
}

class ImageFeed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;

    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: orientation == Orientation.portrait ? 1 : 2,
      ),
      itemCount: 10,
      itemBuilder: (context, index) {
        return ImageCard(imageUrl: 'https://via.placeholder.com/150');
      },
    );
  }
}

class ImageCard extends StatelessWidget {
  final String imageUrl;

  ImageCard({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Image.network(imageUrl, width: 150, height: 150),
        ],
      ),
    );
  }
}
