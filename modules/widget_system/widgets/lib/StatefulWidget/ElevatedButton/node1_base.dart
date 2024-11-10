import 'package:flutter/material.dart';

/// create by 张风捷特烈 on 2020/9/21
/// contact me by email 1981462002@qq.com


class ElevatedButtonDemo extends StatelessWidget {
  const ElevatedButtonDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        height: 60,
        child: Wrap(
          spacing: 20,
          children: [
            ElevatedButton(
              onPressed: _onPressed,
              onLongPress: _onLongPress,
              child: const Text('ElevatedButton'),
            ),
            const ElevatedButton(
              onPressed: null,
              onLongPress: null,
              child: Text('禁用按钮'),
            ),
          ],
        ));
  }

  void _onPressed() {}

  void _onLongPress() {}
}
