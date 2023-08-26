import 'package:flutter/material.dart';

class ScrollableItemList extends StatelessWidget {
  final int itemNum;

  ScrollableItemList({required this.itemNum});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraints.maxHeight),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: List.generate(
                itemNum,
                    (index) => ItemWidget(text: 'Item ${index+1}'),
              ),
            ),
          ),
        );
      },
    );
  }
}

class ItemWidget extends StatelessWidget {
  final String text;

  ItemWidget({required this.text});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: 100,
        child: Center(child: Text(text)),
      ),
    );
  }
}
