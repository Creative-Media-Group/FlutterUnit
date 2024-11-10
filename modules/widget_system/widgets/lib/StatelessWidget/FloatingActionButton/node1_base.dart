/// create by 张风捷特烈 on 2020-03-26
/// contact me by email 1981462002@qq.com
library;

import 'package:flutter/material.dart';

class CustomFAB extends StatelessWidget {
  const CustomFAB({super.key});

  @override
  Widget build(BuildContext context) {
    Map<Color,IconData> data = {
      Colors.red: Icons.add,
      Colors.blue: Icons.bluetooth,
      Colors.green: Icons.android,
    };
    return Wrap(
        spacing: 20,
        children: data.keys
            .map((e) => FloatingActionButton(
          heroTag: "${e}a",
          onPressed: () {},
          backgroundColor: e,
          foregroundColor: Colors.white,
          tooltip: "android",
          elevation: 5,
          child: Icon(data[e]), //z-阴影盖度
        )).toList());
  }
}