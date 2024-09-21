import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Simple App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Text widget with welcome message
              Text(
                'Welcome to My Simple App!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20), // Spacing between widgets

              // ElevatedButton widget
              ElevatedButton(
                onPressed: () {
                  // Prints a message to the console when clicked
                  print("Button Pressed!");
                },
                child: Text('Press me'),
              ),
              SizedBox(height: 20), // Spacing between widgets

              // Image widget that loads from the internet
              Image.network(
                'https://via.placeholder.com/150',
                width: 150,
                height: 150,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
