import 'package:flutter/cupertino.dart';


class DisplayFrame {
  final String title;
  final String desc;
  final String src;
  final WidgetBuilder display;

  DisplayFrame({
    required this.title,
    required this.desc,
    required this.src,
    required this.display,
  });
}


