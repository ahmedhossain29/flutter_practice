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

  final TextEditingController _numberOne =TextEditingController();
  final TextEditingController _numberTwo =TextEditingController();

  double result=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home"),),
    body: Column(
      children: [
        TextFormField(
          controller: _numberOne,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            hintText: 'Enter Number 1',
          ),validator: (String? value){
            if(value==null){
              return 'Enter a number';
            }
            if(value.trim().isEmpty){
              return 'Enter a Number';
            }
        },
        ),
        TextFormField(
          controller: _numberTwo,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            hintText: 'Enter Number 1',
          ),validator: (String? value){
          if(value==null){
            return 'Enter a number';
          }
          if(value.trim().isEmpty){
            return 'Enter a Number';
          }
        },
        ),
        
       SingleChildScrollView(
         scrollDirection: Axis.horizontal,
         child: Row(
           
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             ElevatedButton.icon(onPressed: (){
               double firstNumber=parseToDouble(_numberOne.text.trim());
               double secondNumber=parseToDouble(_numberTwo.text.trim());
               result =addition(firstNumber, secondNumber);
               setState(() {
               });
             }, icon: Icon(Icons.add), label: Text("Sub")),
             SizedBox(width: 5,),
             ElevatedButton.icon(onPressed: (){
               double firstNumber=parseToDouble(_numberOne.text.trim());
               double secondNumber=parseToDouble(_numberTwo.text.trim());
               result =sub(firstNumber, secondNumber);
               setState(() {
               });
             }, icon: Icon(Icons.remove), label: Text("Sub")),
             SizedBox(width: 5,),
             ElevatedButton.icon(onPressed: (){
               double firstNumber=parseToDouble(_numberOne.text.trim());
               double secondNumber=parseToDouble(_numberTwo.text.trim());
               result =mul(firstNumber, secondNumber);
               setState(() {
               });
             }, icon: Icon(Icons.clear), label: Text("Mul")),
             SizedBox(width: 5,),
             ElevatedButton.icon(onPressed: (){
               double firstNumber=parseToDouble(_numberOne.text.trim());
               double secondNumber=parseToDouble(_numberTwo.text.trim());
               result =div(firstNumber, secondNumber);
               setState(() {
               });
             }, icon: Icon(Icons.safety_divider), label: Text("Div")),
             SizedBox(width: 5,),
             ElevatedButton.icon(onPressed: (){
               double firstNumber=parseToDouble(_numberOne.text.trim());
               double secondNumber=parseToDouble(_numberTwo.text.trim());
               result =modulus(firstNumber, secondNumber);
               setState(() {
               });
             }, icon: Icon(Icons.shape_line), label: Text("Div")),
           ],
         ),
       ),

        
        Text('Result is :$result',style: TextStyle(fontSize: 25),)
      ],
    )
    );
  }
}

parseToDouble(String text){
  return double.tryParse(text)??0;
}
addition(double firstNum,double secondNum){
  return firstNum+secondNum;
}
sub(double firstNum,double secondNum){
  return firstNum-secondNum;
}
mul(double firstNum,double secondNum){
  return firstNum*secondNum;
}
div(double firstNum,double secondNum){
  return firstNum/secondNum;
}
modulus(double firstNum,double secondNum){
  return firstNum % secondNum;
}
