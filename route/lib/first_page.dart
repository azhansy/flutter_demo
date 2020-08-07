import 'package:flutter/material.dart';
import 'package:route/second_page.dart';

/**
 * @author dashu
 * @date 8/6/20
 * describe:
 *https://flutter.cn/docs/cookbook/navigation/navigate-with-arguments
 */
class FirstPage extends StatelessWidget {
  static const String routeName = "/FirstPage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'first page',
              style: TextStyle(color: Colors.red),
            ),
            RaisedButton(
              onPressed: () {
                //跳转
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return SecondPage();
                }));
              },
              child: Text("跳转第2个页面"),
            ),
          ],
        ),
      ),
    ));
  }
}
