import 'package:flutter/material.dart';

import 'package:storage/storage.dart';

import 'sliver_article.dart';

class ColumnDetailPage extends StatelessWidget {
  final Columnize columnize;

  const ColumnDetailPage({super.key, required this.columnize});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(columnize.title),
      ),
      body: const CustomScrollView(
        slivers: [
          SliverPadding(
              padding: EdgeInsets.only(top: 8),
          sliver: SliverArticlePanel())
          // SliverAppBar(
          //   title: Text(columnize.title),
          // ),
        ],
      ),
    );
  }
}
