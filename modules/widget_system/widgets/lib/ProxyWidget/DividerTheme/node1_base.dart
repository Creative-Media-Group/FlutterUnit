import 'package:flutter/material.dart';

/// create by 张风捷特烈 on 2020-04-12
/// contact me by email 1981462002@qq.com



class DividerThemeDemo extends StatelessWidget {
  const DividerThemeDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return const DividerTheme(
      data: DividerThemeData(
        color: Colors.orange,
        thickness: 2,
        space: 10,
        indent: 10,
        endIndent: 10,
      ),
      child: Wrap(
        spacing: 10,
        children: [
          Divider(),
          Divider(),
          Divider(),
          Divider(),
          Divider(),
          SizedBox(
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                VerticalDivider(),
                VerticalDivider(),
                VerticalDivider(),
                VerticalDivider(),
                VerticalDivider(),
              ],
            ),
          )
        ],
      ),
    );
  }
}