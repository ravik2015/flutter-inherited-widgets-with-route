import 'package:flutter/material.dart';
import 'package:navmess/screens/Page1.dart';
import 'package:navmess/screens/Page2.dart';
import 'package:navmess/screens/Page3.dart';
import 'package:navmess/widgets/AppState.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'InheritedWidget Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyNav(),
    );
  }
}

Route generatePage(child) {
  return MaterialPageRoute(builder: (context) => child);
}

class MyNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyData(
      data: 'omg',
      child: Navigator(
        onGenerateRoute: (settings) {
          switch (settings.name) {
            case 'page1':
              return generatePage(PageOne());
            case 'page2':
              return generatePage(PageTwo());
            case 'page3':
              return generatePage(PageThree());
          }
        },
        initialRoute: 'page1',
      ),
    );
  }
}
