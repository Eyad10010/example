import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Legendary App',
      home: Scaffold(
        appBar: AppBar(title: const Text('The Flutter Scroll Hahahaha')),
        body: const LegendaryWidget(),
      ),
    );
  }
}

class LegendaryWidget extends StatelessWidget {
  const LegendaryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: const Text('Flutter users'),
          tileColor: Colors.amber,
          onTap: () {},
          leading: const Icon(Icons.person),
          trailing: const Icon(Icons.menu),
        );
      },
      separatorBuilder:
          (BuildContext context, int index) =>
              const Divider(color: Colors.black),
    );
  }
}
