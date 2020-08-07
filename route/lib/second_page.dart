import 'package:flutter/material.dart';
import 'package:route/third_page.dart';

/**
 * @author dashu
 * @date 8/6/20
 * describe:
 *
 */
class SecondPage extends StatelessWidget {

  static const String routeName = "/SecondPage";


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
              'second page',
              style: TextStyle(color: Colors.red),
            ),
            RaisedButton(
              onPressed: () {
                //跳转
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return ThirdPage();
                }));
              },
              child: Text("跳转第3个页面"),
            ),
          ],
        ),
      ),
    ));
  }
}
