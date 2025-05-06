import 'package:flutter/material.dart';

void main() {
  runApp(MySimpleApp());
}

class MySimpleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Flutter Artifact',
      theme: ThemeData(primarySwatch: Colors.purple),
      home: Scaffold(
        appBar: AppBar(title: Text('Simple Flutter Artifact')),
        body : Center(
          child: Column(
            ),
          ),
        
      ),
    );
  }
}