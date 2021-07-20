import "package:flutter/material.dart";

class GridViewPage extends StatelessWidget {
  const GridViewPage({Key? key}) : super(key: key);

  final _valus = const <String>['A', 'B', 'C', 'D', 'E', 'F', 'G'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid View Examples'),
      ),
      body: GridView(
        scrollDirection: Axis.vertical,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, childAspectRatio: 1.0),
        children: _valus.map((e) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
            child: Text(e, textAlign: TextAlign.center),
          );
        }).toList(),
      ),
    );
  }
}
