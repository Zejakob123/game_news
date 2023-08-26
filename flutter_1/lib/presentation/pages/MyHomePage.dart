import 'package:flutter/material.dart';
import '../widgets/ListViewSample.dart';
import '../widgets/HorizontalListSample.dart';
import '../widgets/NewsGridList.dart';
import '../widgets/MySpacedItemList.dart';
import '../widgets/MyLongListView.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body:ListViewBuilderExample(items: List<String>.generate(10000, (i) => 'Item $i')),
      // body: ScrollableItemList(itemNum:20),

      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
