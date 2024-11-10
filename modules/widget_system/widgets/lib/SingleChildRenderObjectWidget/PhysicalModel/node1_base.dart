import 'package:flutter/material.dart';

/// create by 张风捷特烈 on 2020-03-23
/// contact me by email 1981462002@qq.com

class PhysicalModelDemo extends StatelessWidget{
  const PhysicalModelDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          width: 150,
          height: 150,
          child: PhysicalModel(
              shadowColor: Colors.orange,
              elevation: 3,
              clipBehavior: Clip.hardEdge,
              shape: BoxShape.circle,
              color: Colors.deepPurpleAccent,
              child: Image.asset(
                'assets/images/caver.webp',
                fit: BoxFit.cover,
              )),
        ),

        SizedBox(
          width: 150,
          height: 150,
          child: PhysicalModel(
              shadowColor: Colors.orange,
              elevation: 3,
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              clipBehavior: Clip.hardEdge,
              shape: BoxShape.rectangle,
              color: Colors.deepPurpleAccent,
              child: Image.asset(
                'assets/images/caver.webp',
                fit: BoxFit.cover,
              )),
        ),
      ],
    );
  }

}
