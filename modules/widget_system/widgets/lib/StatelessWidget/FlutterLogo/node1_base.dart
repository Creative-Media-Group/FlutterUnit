

/// create by 张风捷特烈 on 2020-03-26
/// contact me by email 1981462002@qq.com
library;

import 'package:flutter/material.dart';

class CustomFlutterLogo extends StatelessWidget {
  const CustomFlutterLogo({super.key});

  @override
  Widget build(BuildContext context) {

    Map<Color,double> data = {
      Colors.blue:50.0,
      Colors.red:60.0,
      Colors.green:70.0,
      Colors.yellow:80.0,
    };
    return Wrap(
      children: data.keys
          .map((e) => FlutterLogo(
        size: data[e],
        textColor: e,
      )).toList(),
    );
  }
}