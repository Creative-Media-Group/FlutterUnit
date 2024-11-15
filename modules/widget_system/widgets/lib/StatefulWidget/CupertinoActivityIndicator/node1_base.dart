import 'package:flutter/cupertino.dart';
/// create by 张风捷特烈 on 2020-03-29
/// contact me by email 1981462002@qq.com

class CustomCupertinoActivityIndicator extends StatelessWidget {
  const CustomCupertinoActivityIndicator({super.key});


  @override
  Widget build(BuildContext context) {

    return const Wrap(
      spacing: 20,
      children: [
        CupertinoActivityIndicator(
          animating: true,
          radius: 25,
        ),
        CupertinoActivityIndicator(
          animating: false,
          radius: 25,
        )
      ],
    );
  }
}
