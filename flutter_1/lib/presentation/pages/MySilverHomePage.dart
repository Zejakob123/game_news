import 'package:flutter/material.dart';

class CustomScrollViewExample extends StatelessWidget {
  final String title;

  CustomScrollViewExample({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
           SliverAppBar(
            title: Text(title),
            floating: true,
            // flexibleSpace: Placeholder(),
            expandedHeight: 200,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) => ListTile(title: Text('Item #$index')),
              childCount: 1000,
            ),
          ),
        ],
      ),
    );
  }
}
