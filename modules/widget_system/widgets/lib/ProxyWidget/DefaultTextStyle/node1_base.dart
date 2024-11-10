
import 'package:flutter/material.dart';

/// create by 张风捷特烈 on 2020-04-12
/// contact me by email 1981462002@qq.com

class DefaultTextStyleDemo extends StatelessWidget {
  const DefaultTextStyleDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTextStyle(
      style: TextStyle(
          fontSize: 18,
          color: Colors.blue,
          decoration: TextDecoration.underline),
      child: Wrap(
        spacing: 5,
        children: [
          Text("Hello,",),
          FlutterLogo(),
          Text("Flutter",style: TextStyle(color: Colors.red),),
          Text("Unit."),
        ],
      ),
    );
  }
}
