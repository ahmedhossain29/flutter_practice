import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Product {
  final String name;
  final double price;
  int count = 0;

  Product(this.name, this.price);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProductList(),
    );
  }
}

class ProductList extends StatefulWidget {
  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {


  List<Product> products = [
    Product('Product A', 10.0),
    Product('Product B', 15.0),
    Product('Product C', 20.0),
    Product('Product D', 20.0),
    Product('Product E', 20.0),
    Product('Product F', 20.0),
    Product('Product G', 20.0),
    Product('Product H', 20.0),
    Product('Product I', 20.0),
    Product('Product J', 20.0),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CartPage(products)),
          );

        },
        child: Icon(Icons.shopping_cart),
      ),
      appBar: AppBar(
        title: Text('Product List'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (BuildContext context, int index) {
          final product = products[index];
          return ListTile(
            title: Text(product.name),
            subtitle: Text('Price: \$${product.price.toStringAsFixed(2)}'),
            trailing: Column(
              children: [
                Text('Count: ${product.count}'),
                Expanded(
                  child: ElevatedButton(onPressed: (){
                    product.count++;
                    if(product.count==5){

                      showDialog(context: context, builder: (BuildContext context){
                        return AlertDialog(
                          title: Text("Congratulation"),
                          content: Text("You Buy ${product.name}"),
                        );
                      });
                    }
                    setState(() {

                    });

                  }, child: Text("BuyNow")),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
class CartPage extends StatelessWidget {
  final List<Product> products;

  CartPage(this.products);

  int getTotalPurchases() {
    return products.where((product) => product.count >=5).length;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: Center(
        child: Text(
          'Total Products Bought: ${getTotalPurchases()}',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}