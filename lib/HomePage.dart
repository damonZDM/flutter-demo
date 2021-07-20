import "package:flutter/material.dart";
import 'GridViewPage.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  final _names = const [
    'Text',
    'Button',
    'Image&Icon',
    'Switch&CheckBox',
    'TextField & Form',
    'Progress',
    'Layout',
    'Container',
    'SingleChildScrollView',
    'GridView',
    'CustomScrollView',
    'ScrollController'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: ListView.separated(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          itemCount: _names.length,
          itemBuilder: (_, int index) {
            String name = _names[index];
            return ListTile(
              title: Text(name),
              onTap: () {
                routeTo(context, name);
              },
            );
          },
          separatorBuilder: (_, int index) => const Divider()),
    );
  }

  void routeTo(BuildContext context, String name) {
    switch (name) {
      case 'GridView':
        Navigator.of(context).pushNamed('/grid');
        break;
      default:
        break;
    }
  }
}
