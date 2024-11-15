import 'package:flutter/material.dart';

/// create by 张风捷特烈 on 2020/9/21
/// contact me by email 1981462002@qq.com


class TextButtonStyleDemo extends StatelessWidget {
  const TextButtonStyleDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Wrap(
        spacing: 10,
        children: [
          TextButton(
            style: TextButton.styleFrom(
                backgroundColor: Colors.blue,
                padding: const EdgeInsets.symmetric(horizontal: 8),
                foregroundColor: Colors.white,
                elevation: 2,
                shadowColor: Colors.orangeAccent),
            onPressed: _onPressed,
            onLongPress: _onLongPress,
            child: const Text('TextButton 样式'),
          ),
          TextButton(
            style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                side: const BorderSide(color: Colors.blue, width: 1),
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                // elevation: 2,
                shadowColor: Colors.orangeAccent),
            autofocus: false,
            onPressed: _onPressed,
            onLongPress: _onLongPress,
            child: const Text('TextButton 边线'),
          ),
        ],
      ),
    );
  }

  void _onPressed() {}

  void _onLongPress() {}
}
