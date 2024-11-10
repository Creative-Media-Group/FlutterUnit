
// Copyright 2014 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class CarouselNode2 extends StatefulWidget {
  const CarouselNode2({super.key});

  @override
  State<CarouselNode2> createState() => _CarouselNode2State();
}

class _CarouselNode2State extends State<CarouselNode2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: const Text('Carousel'),),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxHeight: 64),
          child: CarouselView(
            backgroundColor:  const Color(0xfff7f8fa),
            itemExtent: 240,
            // shrinkExtent: 200,
            itemSnapping: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6)
            ),
            children: List<Widget>.generate(20, (int index) {
              return _UncontainedLayoutCard(index: index, label: 'Item $index');
            }),
          ),
        ),
      ),
    );
  }
}

class _UncontainedLayoutCard extends StatelessWidget {
  const _UncontainedLayoutCard({
    required this.index,
    required this.label,
  });

  final int index;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Container(
                width: 18,
                height: 18,
                margin: const EdgeInsets.only(right: 6),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                 color: Colors.red,
                 borderRadius: BorderRadius.circular(4)
                ),
                child: const Text('热',style: TextStyle(fontSize: 10,color: Colors.white,),),
              ),
              const Text(
                'Container 容器组件',
                style: TextStyle(color: Colors.black, fontSize: 14,fontWeight: FontWeight.bold),
                overflow: TextOverflow.clip,
                softWrap: false,
              ),
            ],
          ),
          const Text(
            '用于容纳单个子组件的容器组件。集成了若干个单子组件的功能，如内外边距、形变、装饰、约束等...',
            style: TextStyle(color: Colors.grey, fontSize: 12),
            overflow: TextOverflow.clip,
            softWrap: false,
          ),
        ],
      ),
    );
  }
}
