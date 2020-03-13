import 'package:flutter/material.dart';
import 'package:navmess/widgets/AppState.dart';

import 'Page2.dart';

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 1'),
      ),
      backgroundColor: Colors.red,
      body: RaisedButton(
        child: Text("Goto page 2, data=${MyData.of(context).data}"),
        onPressed: () {
          MyData.of(context).data = "teasker";
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => PageTwo()));
        },
      ),
    );
  }
}
