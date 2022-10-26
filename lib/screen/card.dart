import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(
        title: const Text('Card Screen'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [
          Card(
            child: Column(
              children: [
                const ListTile(
                  leading: Icon(Icons.ad_units_outlined),
                  title: Text(
                      'Pariatur adipisicing ut aliquip magna incididunt aute dolore proident consectetur pariatur dolor ad.'),
                ),
                Row(
                  children: [
                    Text('Hola'),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
