import 'package:app/app.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../data/zone.dart';
import 'widget_model_item.dart';

class PhoneWidgetContent extends StatelessWidget {
  final List<WidgetModel> items;

  const PhoneWidgetContent({super.key,required this.items});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (_, int index) => StandardWidgetItem(
          model:  items[index],
          onTap: () => _toDetail(context,  items[index]),
        ),
        childCount: items.length,
      ),
    );
  }

  void _toDetail(BuildContext context, WidgetModel model) {
    context.push('/widget/detail/${model.name}',extra: model);

  }
}
