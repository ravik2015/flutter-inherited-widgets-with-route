import 'package:flutter/material.dart';

class MyData extends InheritedWidget {
  MyData({Key key, this.child, this.data}) : super(key: key, child: child);

  final Widget child;
  String data;

  static MyData of(BuildContext context) {
    return (context.inheritFromWidgetOfExactType(MyData) as MyData);
  }

  @override
  bool updateShouldNotify(MyData oldWidget) {
    return true;
  }
}
