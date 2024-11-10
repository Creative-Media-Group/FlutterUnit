import 'package:flutter/material.dart';

/// create by 张风捷特烈 on 2020/7/22
/// contact me by email 1981462002@qq.com


class TooltipThemeDemo extends StatelessWidget {
  const TooltipThemeDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return TooltipTheme(
        data: TooltipTheme.of(context).copyWith(
            preferBelow: false,
            padding: const EdgeInsets.all(5),
            verticalOffset: 20,
            margin: const EdgeInsets.all(2),
            textStyle: const TextStyle(color: Colors.red, shadows: [
              Shadow(color: Colors.white, offset: Offset(1, 1)),
            ]),
            decoration: const BoxDecoration(boxShadow: [
              BoxShadow(
                  color: Colors.orangeAccent,
                  offset: Offset(1, 1),
                  blurRadius: 8)
            ])),
        child: const TempTooltip());
  }
}

class TempTooltip extends StatelessWidget {
  const TempTooltip({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Tooltip(message: "天王盖地虎", child: Icon(Icons.info_outline)),
        Tooltip(message: "宝塔镇河妖", child: Icon(Icons.info_outline)),
      ],
    );
  }
}
