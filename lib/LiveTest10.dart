import 'package:flutter/material.dart';

void main() => runApp(ItemSelectionApp());

class ItemSelectionApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ItemSelectionScreen(),
    );
  }
}

class ItemSelectionScreen extends StatefulWidget {
  @override
  _ItemSelectionScreenState createState() => _ItemSelectionScreenState();
}

class _ItemSelectionScreenState extends State<ItemSelectionScreen> {
  List<Item> items = List.generate(5, (index) => Item(index, false));
  List<Item> selectedItems = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Selection Screen"),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("Item ${items[index].id + 1}"),
            tileColor: items[index].isSelected ? Colors.blue : null,
            onTap: () {
              setState(() {
                items[index].isSelected = !items[index].isSelected;
                if (items[index].isSelected) {
                  selectedItems.add(items[index]);
                } else {
                  selectedItems.remove(items[index]);
                }
              });
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text("Selected Items"),
                content: Text("Number of selected items: ${selectedItems.length}"),
                actions: <Widget>[
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text("Close"),
                  ),
                ],
              );
            },
          );
        },
        child: Icon(Icons.check),
      ),
    );
  }
}

class Item {
  final int id;
  bool isSelected;

  Item(this.id, this.isSelected);
}
