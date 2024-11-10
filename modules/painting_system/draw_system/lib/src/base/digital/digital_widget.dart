import 'package:flutter/material.dart';

import 'digital_painter.dart';
import 'digital_path.dart';
import 'dart:math' as math;

class SingleDigitalWidget extends StatelessWidget {
  final double width;
  final Color color;
  final int value;
  final DigitalPath digitalPath;

  SingleDigitalWidget(
      {super.key,
      required this.width,
      required this.value,
      DigitalPath? digitalPath,
      this.color = Colors.black})
      : digitalPath = digitalPath ?? DigitalPath();

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(width, width * DigitalPath.kDigitalRate),
      painter: DigitalPainter(
        color: color,
        value: value,
        digitalPath: digitalPath,
      ),
    );
  }
}

// 展示若干位数字
class MultiDigitalWidget extends StatelessWidget {
  final int count;
  final int value;
  final DigitalPath digitalPath;
  final double spacing;
  final double runSpacing;
  final double width;
  final List<Color> colors;

  MultiDigitalWidget({
    super.key,
    required this.count,
    required this.value,
    this.spacing = 26,
    this.runSpacing = 26,
    required this.width,
    this.colors = const [],
    DigitalPath? digitalPath,
  })  : digitalPath = digitalPath ?? DigitalPath();

  @override
  Widget build(BuildContext context) {
    int max = math.pow(10, count).toInt();
    String numStr = (value % max).toString().padLeft(count, "0");

    Color color = Colors.black;

    return Wrap(
      spacing: spacing,
      runSpacing: runSpacing,
      children: List.generate(
          count,
          (index) {
            if(index<colors.length){
              color = colors[index];
            }
            return SingleDigitalWidget(
                width: width,
                color: color,
                value: int.parse(numStr[index]),
                digitalPath: digitalPath,
              );
          }),
    );
  }
}
