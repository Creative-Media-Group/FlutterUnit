
import 'package:flutter/material.dart';

/// create by 张风捷特烈 on 2020/7/22
/// contact me by email 1981462002@qq.com


class InteractiveViewerDemo extends StatelessWidget {
  const InteractiveViewerDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      color: Colors.grey.withAlpha(33),
      child: InteractiveViewer(
        boundaryMargin: const EdgeInsets.all(40.0),
        maxScale: 2.5,
        minScale: 0.3,
        panEnabled: true,
        scaleEnabled: true,
        onInteractionStart: _onInteractionStart,
        onInteractionUpdate: _onInteractionUpdate,
        onInteractionEnd: _onInteractionEnd,
        child: Image.asset('assets/images/caver.webp'),
      ),
    );
  }

  void _onInteractionStart(ScaleStartDetails details) {
    print('onInteractionStart----$details');
  }

  void _onInteractionUpdate(ScaleUpdateDetails details) {
    print('onInteractionUpdate----$details');
  }

  void _onInteractionEnd(ScaleEndDetails details) {
    print('onInteractionEnd----$details');
  }
}
