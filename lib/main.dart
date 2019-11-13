import 'package:flutter/material.dart';

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

class MyData extends InheritedWidget {
  MyData({Key key, this.child, this.data}) : super(key: key, child: child);

  final Widget child;
  final String data;

  static MyData of(BuildContext context) {
    return (context.inheritFromWidgetOfExactType(MyData) as MyData);
  }

  @override
  bool updateShouldNotify(MyData oldWidget) {
    return true;
  }
}

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
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => PageTwo()));
        },
      ),
    );
  }
}

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
