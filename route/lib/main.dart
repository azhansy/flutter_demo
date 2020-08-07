import 'package:flutter/material.dart';
import 'package:route/route_manifest.dart';
import 'package:route/route_test.dart';

import 'first_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: RouteManifest.routes,
      onGenerateRoute: RouteManifest.onGenerateRoute,
//      home: MyHomePage(title: 'Flutter Demo Home Page1111'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '首页',
              style: Theme.of(context).textTheme.headline4,
            ),
            RaisedButton(
              onPressed: () {
                //跳转
//                Navigator.of(context)
//                    .push(MaterialPageRoute(builder: (BuildContext context) {
//                  return FirstPage();
//                }));
                Navigator.pushNamed(context, FirstPage.routeName);
              },
              child: Text("跳转第一个页面"),
            ),
            RaisedButton(
              onPressed: () {
                //跳转
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return RouteTest();
                }));
//                Navigator.pushNamed(context, FirstPage.routeName);
              },
              child: Text("官方例子 route传参"),
            ),
          ],
        ),
      ),
    );
  }
}
