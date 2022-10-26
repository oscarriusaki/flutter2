import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final option = ['Batman', 'SpiderMan', 'Iron Man'];

    return Scaffold(
      appBar: AppBar(
        title: const Text('List Screen'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          leading: const Icon(Icons.abc_sharp),
          title: Text(option[index]),
          trailing: const Icon(Icons.arrow_forward_ios_rounded),
        ),
        separatorBuilder: (_, __) => const Divider(),
        itemCount: option.length,
      ),
    );
  }
}
