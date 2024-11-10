import 'package:flutter/material.dart';

/// create by 张风捷特烈 on 2020-03-25
/// contact me by email 1981462002@qq.com


class CustomTab extends StatelessWidget {
  const CustomTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Tab(
          icon:Icon( Icons.add,color: Colors.blue,),
          child: Text('添加'),
        ),
        Tab(
          icon:Icon( Icons.close,color: Colors.red,),
          text: '删除',
        ),
        Tab(
          icon:Icon( Icons.refresh,color: Colors.green),
          text: '更新',
        ),
      ],
    );
  }
}
