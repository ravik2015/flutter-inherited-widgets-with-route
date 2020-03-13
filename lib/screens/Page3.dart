import 'package:flutter/material.dart';
import 'package:navmess/widgets/AppState.dart';

class PageThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 3'),
      ),
      backgroundColor: Colors.green,
      body: RaisedButton(
        child: Text("Goto page 4, data=${MyData.of(context).data}"),
        onPressed: null,
      ),
    );
  }
}
