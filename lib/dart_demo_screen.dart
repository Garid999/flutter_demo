import 'package:flutter/material.dart';

class DartDemoScreen extends StatelessWidget {
  const DartDemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('1. Dart Demo'),
      ),
      // Center helps place the scrollable content in the middle of the screen
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                     print ('hello world');
                  },
                  child: const Text('Hello World'),),
                const SizedBox(height: 10), // Adds space between buttons
                ElevatedButton(onPressed: () {}, child: const Text('Button 2')),
                const SizedBox(height: 10),
                ElevatedButton(onPressed: () {}, child: const Text('Button 3')),
                const SizedBox(height: 10),
                ElevatedButton(onPressed: () {}, child: const Text('Button 4')),
                const SizedBox(height: 10),
                ElevatedButton(onPressed: () {}, child: const Text('Button 5')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}