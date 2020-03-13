import 'package:flutter/material.dart';
import 'package:navmess/widgets/AppState.dart';
import 'Page3.dart';

class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 2'),
      ),
      backgroundColor: Colors.red,
      body: RaisedButton(
        child: Text("Goto page 3, data=${MyData.of(context).data}"),
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => PageThree()));
        },
      ),
    );
  }
}
