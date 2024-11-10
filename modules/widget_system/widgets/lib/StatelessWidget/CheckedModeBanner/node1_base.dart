import 'package:flutter/material.dart';

/// create by 张风捷特烈 on 2020/9/21
/// contact me by email 1981462002@qq.com


class CheckedModeBannerDemo extends StatelessWidget {
  const CheckedModeBannerDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return CheckedModeBanner(
      child: Container(
        alignment: Alignment.center,
        width: 250,
        height: 150,
        color: Theme.of(context).primaryColor,
        child: const Text(
          "CheckedModeBanner",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
