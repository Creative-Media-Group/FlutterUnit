import 'package:flutter/material.dart';

/// create by 张风捷特烈 on 2020/3/31
/// contact me by email 1981462002@qq.com
///

class PrimaryScrollControllerDemo extends StatelessWidget {
  const PrimaryScrollControllerDemo({super.key});

  final String info =
      'PrimaryScrollController 是 InheritedWidget 子类，也就说明它可以为子树组件提供某些默认数据，'
      '子树可以通过 context 来获取上层该组件的提供 ScrollController 对象。\n'
      '对于一些可滑动组件 ScrollView、SingleChildScrollView、NestedScrollView 等，'
      '在使用者未提供 ScrollController 时，且 primary 属性为 true 时(默认true) ，'
      '会使用上层 PrimaryScrollController 组件提供的滑动控制器。\n'
      '使用 MaterialApp 组件，其已经内置 PrimaryScrollController，';

  @override
  Widget build(BuildContext context) {
    ScrollController? label = PrimaryScrollController.of(context);

    return Container(
      color: Colors.blue.withOpacity(0.1),
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(10),
      child: Text("$info当前其持有的滑动控制器对象: $label"),
    );
  }
}
