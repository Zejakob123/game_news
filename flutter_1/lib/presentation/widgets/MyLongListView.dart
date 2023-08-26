import 'package:flutter/material.dart';

class ListViewBuilderExample extends StatelessWidget {
  final List<String> items;

  ListViewBuilderExample({required this.items});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      prototypeItem: ListTile(
        title: Text(items.first),
      ),
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(items[index]),
        );
      },
    );
  }
}
