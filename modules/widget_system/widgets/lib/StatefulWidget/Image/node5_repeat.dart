import 'package:flutter/material.dart';

/// create by 张风捷特烈 on 2020-03-29
/// contact me by email 1981462002@qq.com

class RepeatImage extends StatelessWidget {
  const RepeatImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: ImageRepeat.values
          .toList()
          .map((mode) => Column(children:[
        Container(
            margin: const EdgeInsets.all(5),
            width: 150,
            height: 60,
            color: Colors.red,
            child: Image(
                image: const AssetImage("assets/images/wy_30x20.webp"),
                repeat: mode)),
        Text(mode.toString().split(".")[1])
      ]))
          .toList(),
    );
  }
}