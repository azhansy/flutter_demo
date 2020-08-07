import 'package:flutter/material.dart';
import 'package:route/third_page.dart';

import 'first_page.dart';

/**
 * @author dashu
 * @date 8/6/20
 * describe:
 *
 */
class FouthPage extends StatelessWidget {
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
              'four page',
              style: TextStyle(color: Colors.red),
            ),
            RaisedButton(
              onPressed: () {
                //跳转
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return FirstPage();
                }));
              },
              child: Text("跳转第1个页面"),
            ),
            RaisedButton(
              onPressed: () {
                //跳转到ThirdPage，ModalRoute.withName('/')保留首页
//                Navigator.pushAndRemoveUntil(
//                  context,
//                  MaterialPageRoute(
//                    builder: (BuildContext context) => ThirdPage(),
//                  ),
//                  //需要保留的页面
//                  ModalRoute.withName(FirstPage.routeName),
////                  ModalRoute.withName('/'),
//                );
                //跳转到ThirdPage，ModalRoute.withName('/')保留首页

                //普通的push
//                Navigator.popAndPushNamed(context,FirstPage.routeName);

//                Navigator.pushNamed(context, ThirdPage.routeName,
//                    arguments: ScreenArguments("azhansy", '牛逼啊'));
                Navigator.pushNamedAndRemoveUntil(context, ThirdPage.routeName,
                    ModalRoute.withName(FirstPage.routeName),
                    arguments: ScreenArguments("azhansy", '牛逼啊'));
              },
              child: Text("直接回到第2个页面"),
            ),
          ],
        ),
      ),
    ));
  }
}
