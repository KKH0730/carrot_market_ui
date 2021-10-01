import 'package:carrot_market_ui/theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class CardIconMenu extends StatelessWidget {
  const CardIconMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.0)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          children: [
            _iconList('내 동네 설정', FontAwesomeIcons.mapMarkerAlt),
            SizedBox(height: 30),
            _iconList('동네 인증하기', FontAwesomeIcons.compressArrowsAlt),
            SizedBox(height: 30),
            _iconList('키워드 알림', FontAwesomeIcons.tag),
            SizedBox(height: 30),
            _iconList('모아보기', FontAwesomeIcons.borderAll)
          ],
        ),
      ),
    );
  }
}

Widget _iconList(String title, IconData iconData) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Icon(iconData, size: 17),
      SizedBox(width: 20),
      Text(title, style: textTheme().subtitle1)
    ],
  );
}
