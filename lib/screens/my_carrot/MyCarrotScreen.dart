import 'package:flutter/material.dart';

import 'component/CardIconMenu.dart';
import 'component/MyCarrotHeader.dart';

class MyCarrotScreen extends StatelessWidget {
  const MyCarrotScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: const Text('나의 당근'),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.settings))
          ],
          bottom: const PreferredSize(
              child: Divider(thickness: 0.5, height: 0.5, color: Colors.grey),
              preferredSize: Size.fromHeight(0.5)
          ),
        ),
      body: ListView(
        children: [
          MyCarrotHeader(),
          CardIconMenu(),
          const SizedBox(height: 8.0),
        ],
      ),
    );
  }
}
