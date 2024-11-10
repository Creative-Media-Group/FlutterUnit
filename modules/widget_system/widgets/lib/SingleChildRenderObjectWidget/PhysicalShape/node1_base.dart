
import 'package:flutter/material.dart';

/// create by 张风捷特烈 on 2020/7/22
/// contact me by email 1981462002@qq.com


class PhysicalShapeDemo extends StatelessWidget {
  const PhysicalShapeDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 200,
      child: PhysicalShape(
          shadowColor: Colors.orange,
          elevation: 3,
          clipBehavior: Clip.hardEdge,
          clipper: const ShapeBorderClipper(
            shape: CircleBorder(side: BorderSide.none),
          ),
          color: Colors.deepPurpleAccent,
          child: Image.asset(
            'assets/images/caver.webp',
            fit: BoxFit.cover,
          )),
    );
  }
}
