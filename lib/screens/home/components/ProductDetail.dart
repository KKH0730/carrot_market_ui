import 'package:carrot_market_ui/models/Product.dart';
import 'package:carrot_market_ui/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ProductDetail extends StatelessWidget {
  final Product product;

  const ProductDetail({required this.product});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(product.title, style: textTheme().bodyText1),
        const SizedBox(height: 4.0),
        Text('${product.address} - ${product.publishedAt}'),
        const SizedBox(height: 4.0),
        Text('${numberFormat(product.price)}원', style: textTheme().headline2),
        const Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Visibility(
                child: _buildIcons(
                  product.commentsCount,
                  CupertinoIcons.chat_bubble_2
                ),
              visible: product.commentsCount > 0,
            ),
            Visibility(
              child: _buildIcons(
                product.heartCount,
                  CupertinoIcons.heart
              ),
              visible: product.heartCount > 0,
            )
          ],
        )
      ],
    ));
  }

  String numberFormat(String price) {
    final formatter = NumberFormat('#,###');
    return formatter.format(int.parse(price));
  }

  Widget _buildIcons(int count, IconData iconData) {
    return Row(
      children: [
        Icon(iconData, size: 14.0),
        const SizedBox(width: 4.0),
        Text('$count')
      ],
    );
  }
}
