import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text(
            'Holaaaaaaaaaaaaa Andy no sabe hacer un tramite, se lo pedi hace mil años ajjajajajaj ',
          ),
        ),
      ),
    );
  }
}
