import 'package:flutter/material.dart';
import 'package:flutter_examples/CustomScrollViewPage.dart';
import 'package:flutter_examples/GridViewPage.dart';
import 'package:flutter_examples/HomePage.dart';
import 'package:flutter_examples/ScrollControllerPage.dart';
import 'package:flutter_examples/dialogs.dart';
import 'package:flutter_examples/scroll_notification_page.dart';
import 'package:flutter_examples/will_pop_scope_test_route.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Examples',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => const HomePage(title: 'Flutter Demo Home Page'),
        '/grid': (BuildContext context) => const GridViewPage(),
        '/custom-scroll': (BuildContext context) => const CustomScrollViewPage(),
        '/scroll-controller': (BuildContext context) => ScrollControllerPage(),
        '/scroll-notification': (BuildContext context) => ScrollNotificationPage(),
        '/will-pop-scope': (BuildContext context) => WillPopScopeTestRoute(),
        '/dialog': (_) => DialogsPage(),
      },
    );
  }
}
