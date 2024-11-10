import 'package:flutter/material.dart';

/// create by 张风捷特烈 on 2020/7/20
/// contact me by email 1981462002@qq.com

class NavigationToolbarDemo extends StatelessWidget {
  const NavigationToolbarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SizedBox(
            height: 60,
            child: NavigationToolbar(
              leading: Icon(Icons.ac_unit),
              middle: Text('middleSpacing#true'),
              middleSpacing: 20,
              centerMiddle: true,
              trailing: Icon(Icons.more_vert),
            ),
          ),
          SizedBox(
            height: 60,
            child: NavigationToolbar(
              leading: Icon(Icons.ac_unit),
              middle: Text('middleSpacing#false'),
              middleSpacing: 20,
              centerMiddle: false,
              trailing: Icon(Icons.more_vert),
            ),
          ),
        ],
    );
  }
}