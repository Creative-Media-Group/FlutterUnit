import 'package:flutter/material.dart';


/// create by 张风捷特烈 on 2020/9/21
/// contact me by email 1981462002@qq.com


class TextButtonDemo extends StatelessWidget {
  const TextButtonDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        height: 60,
        child: Wrap(
          spacing: 20,
          children: [
            TextButton(
              onPressed: _onPressed,
              onLongPress: _onLongPress,
              child: const Text('TextButton 文字'),
            ),
            const TextButton(
              onPressed: null,
              onLongPress: null,
              child: Text('TextButton 禁用'),
            ),
          ],
        ));
  }

  void _onPressed() {}

  void _onLongPress() {}
}
