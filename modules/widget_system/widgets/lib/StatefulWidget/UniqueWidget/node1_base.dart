import 'package:flutter/material.dart';

/// create by 张风捷特烈 on 2020/9/21
/// contact me by email 1981462002@qq.com


class UniqueWidgetDemo extends StatelessWidget {
  const UniqueWidgetDemo({super.key});

  final String info =
      '该类是抽象类，在 Flutter 框架层没有实现类，也没有其他源码使用到它，说明它基本上没啥用。'
      '本质上它也非常简单，就是为组件添加一个 GlobalKey，在 Element#inflateWidget 时，会校验组件是否有 GlobalKey ，'
      '如果有，则根据 key 找到之前的对应的 Element，就不会触发 Widget#createElement。为了方便获取 State，该类暴露 currentState 属性。'
      '你瞄一下源码，就能看到这个组件是多么简单，简单到可以自己完成，以至于没什么大用。';

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue.withOpacity(0.1),
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(10),
      child: Text(info),
    );
  }
}
