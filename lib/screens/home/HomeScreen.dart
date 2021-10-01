import 'package:carrot_market_ui/theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Row(
          children: [
            const Text('좌동'),
            const SizedBox(width: 4.0),
          ],
        )
      ),
      body: Container(
        color: Colors.orange[100],
        child: Center(
          child: Text(
            "HomeScreen body 영역(index:0)",
            style: textTheme().headline2,
          ),
        ),
      ),
    );
  }
}
