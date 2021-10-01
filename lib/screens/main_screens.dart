import 'package:carrot_market_ui/screens/chatting/ChattingScreen.dart';
import 'package:carrot_market_ui/screens/home/HomeScreen.dart';
import 'package:carrot_market_ui/screens/my_carrot/MyCarrotScreen.dart';
import 'package:carrot_market_ui/screens/near_me/NearMeScreen.dart';
import 'package:carrot_market_ui/screens/neighborhood_life/NeighborhoodLifeScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreens extends StatefulWidget {
  const MainScreens({Key? key}) : super(key: key);

  @override
  _MainScreensState createState() => _MainScreensState();
}

class _MainScreensState extends State<MainScreens> {
  int _selectedIndex = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          HomeScreen(),
          NeighborhoodScreen(),
          NearMeScreen(),
          ChattingScreen(),
          MyCarrotScreen()
        ],
      ),
      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height * 0.08,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          type : BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              print('index : $index');
              _selectedIndex = index;
            });
          },
          items: [
            const BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), label: '홈'),
            const BottomNavigationBarItem(icon: Icon(CupertinoIcons.square_on_square), label: '동네생활'),
            const BottomNavigationBarItem(icon: Icon(CupertinoIcons.placemark), label: '내 근처'),
            const BottomNavigationBarItem(icon: Icon(CupertinoIcons.chat_bubble_2), label: '채팅'),
            const BottomNavigationBarItem(icon: Icon(CupertinoIcons.person), label: '나의 당근')
          ],
        ),
      )

    );
  }
}
