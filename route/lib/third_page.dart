import 'package:flutter/material.dart';

import 'four_page.dart';

/**
 * @author dashu
 * @date 8/6/20
 * describe:
 *
 */

class ScreenArguments {
  final String title;
  final String message;

  ScreenArguments(this.title, this.message);
}

class ThirdPage extends StatelessWidget {
  static const String routeName = "/ThirdPage";

  @override
  Widget build(BuildContext context) {
    //如果没有传进来，则会为空
    final ScreenArguments args = ModalRoute.of(context).settings.arguments;

    return Scaffold(
        body: Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'third page ${args?.title},${args?.message}',
              style: TextStyle(color: Colors.red),
            ),
            RaisedButton(
              onPressed: () {
                //跳转
//                Navigator.of(context)
//                    .push(MaterialPageRoute(builder: (BuildContext context) {
//                  return FourPage(title: "third coming",);
//                }));
                Navigator.pushNamed(context, FourPage.routeName,arguments: ScreenArguments("azhansy3", '牛逼啊'));
              },
              child: Text("跳转第4个页面"),
            ),
          ],
        ),
      ),
    ));
  }
}
