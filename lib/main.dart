import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDarkMode = false;

  void toggleTheme() {
    setState(() {
      isDarkMode = !isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: isDarkMode ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Theme Switcher'),
          actions: [
            Switch(
              value: isDarkMode,
              onChanged: (value) {
                toggleTheme();
              },
            ),
          ],
        ),
        body: Center(
          child: Text(
            'Theme Switcher App!',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
