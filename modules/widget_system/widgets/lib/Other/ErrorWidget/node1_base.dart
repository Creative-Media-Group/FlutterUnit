import 'package:flutter/material.dart';

/// create by 张风捷特烈 on 2020-03-31
/// contact me by email 1981462002@qq.com

class ErrorWidgetDemo extends StatelessWidget {
  const ErrorWidgetDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ErrorWidget(
          'I am Error ErrorWidget\n'
              'But now, there has no error.'
      ),
    );
  }
}
