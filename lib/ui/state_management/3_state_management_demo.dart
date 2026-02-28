import 'package:flutter/material.dart';

class StateManagementDemo extends StatefulWidget {
  const StateManagementDemo({super.key});

  @override
  State<StateManagementDemo> createState() => _StateManagementDemoState();
}

class _StateManagementDemoState extends State<StateManagementDemo> {
  final colors = [
    Colors.amber,
    Colors.black,
    Colors.red,
    Colors.green,
    Colors.cyan,
    Colors.purple,
    Colors.orange,
    Colors.white,
  ];
  int colorIndex = 0;
  final colorIndexNotifier = ValueNotifier(0);

  int number = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('State Management')),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Container(color: colors[colorIndex], width: 200, height: 200,
            child: Center(
              child: Text("$number", style: TextStyle(fontSize: 50),),
            ),
            ),
            const SizedBox(height: 20),
            OutlinedButton(onPressed: changeColor, child: Text('Change color')),
            const SizedBox(height: 20),
            OutlinedButton(onPressed: changeText, child: Text('Change text')),
          ],
        ),
      ),
    );
  }

  void changeColor() {
      setState(() {
    colorIndex++;
    colorIndex = colorIndex % colors.length;
    print(colorIndex);
    });
  }

  void changeText() {
    setState(() {
      number = number + 1;
    });
  }
}