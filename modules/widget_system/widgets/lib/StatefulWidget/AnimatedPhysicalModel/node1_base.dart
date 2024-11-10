import 'package:flutter/material.dart';

/// create by 张风捷特烈 on 2020-03-23
/// contact me by email 1981462002@qq.com

class AnimatedPhysicalModelDemo extends StatefulWidget {
  const AnimatedPhysicalModelDemo({super.key});

  @override
  _AnimatedPhysicalModelDemoState createState() =>
      _AnimatedPhysicalModelDemoState();
}

class _AnimatedPhysicalModelDemoState extends State<AnimatedPhysicalModelDemo> {
  bool flag = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildSwitch(),
        SizedBox(
          width: 150,
          height: 150,
          child: AnimatedPhysicalModel(
            duration: const Duration(seconds: 2),
            curve: Curves.fastOutSlowIn,
            shadowColor: flag?Colors.orange:Colors.purple,
            elevation: flag?10:5,
            borderRadius: BorderRadius.all(Radius.circular(flag? 10:75)),
            clipBehavior: Clip.hardEdge,
            shape: BoxShape.rectangle,
            color: Colors.deepPurpleAccent,
            onEnd: () => print('----onEnd---'),
            child: Image.asset(
              'assets/images/caver.webp',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSwitch() => Switch(
        value: flag,
        onChanged: (v) {
          setState(() {
            flag = v;
          });
        });
}