import 'package:flutter/material.dart';

import 'inner_padding.dart';

class OuterPadding extends StatelessWidget {
  const OuterPadding({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InnerPadding(),
        Padding(
          padding: EdgeInsets.only(left: 24.0),
          child: InnerPadding(),
        ),
      ],
    );
  }
}
