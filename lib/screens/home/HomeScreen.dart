import 'package:carrot_market_ui/models/Product.dart';
import 'package:carrot_market_ui/screens/home/components/ProductItem.dart';
import 'package:carrot_market_ui/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const Text('좌동'),
            const SizedBox(width: 4.0),
            const Icon(
              CupertinoIcons.chevron_down,
              size: 15.0,
            )
          ],
        ),
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(0.5),
          child: Divider(
            thickness: 0.5,
            height: 0.5,
            color: Colors.grey,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(CupertinoIcons.list_dash)),
          IconButton(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.bell),
          )
        ],
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => ProductItem(product: productList[index]) ,
          separatorBuilder: (context, index) => const Divider(
            height: 0,
            indent: 16,
            endIndent: 16,
            color: Colors.grey,
          ),
          itemCount: productList.length
      )
    );
  }
}
