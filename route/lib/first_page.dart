import 'package:flutter/material.dart';

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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            'third page',
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
            child: Text("跳转页面"),
          ),
        ],
      ),
    ));
  }
}
