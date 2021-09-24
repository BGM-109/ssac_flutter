import 'package:flutter/material.dart';
import 'package:kakao_webtoon_ui/components/my_icon.dart';
import 'package:kakao_webtoon_ui/components/tab_menu.dart';
import 'package:kakao_webtoon_ui/screens/empty_screen.dart';
import 'package:kakao_webtoon_ui/screens/special_screen.dart';

void main() => runApp(const VideoPlayerApp());

class VideoPlayerApp extends StatelessWidget {
  const VideoPlayerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
      ),
      home: DefaultTabController(
        length: 5,
        initialIndex: 2,
        child: Scaffold(
          body: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                const SliverAppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  leading: Icon(
                    Icons.notifications_outlined,
                  ),
                  actions: [
                    MyIcon(icon: Icons.notifications_outlined),
                    MyIcon(icon: Icons.search_outlined),
                    MyIcon(icon: Icons.align_vertical_bottom_outlined),
                  ],
                  pinned: true,
                  floating: true,
                  bottom: TabBar(
                    isScrollable: true,
                    physics: NeverScrollableScrollPhysics(),
                    indicator: BoxDecoration(
                      color: Colors.transparent,
                    ),
                    tabs: [
                      TabMenu(menuName: "보관함"),
                      TabMenu(menuName: "선물함"),
                      TabMenu(menuName: "메인메뉴"),
                      TabMenu(menuName: "웹툰원작"),
                      TabMenu(menuName: "소설원작"),
                    ],
                  ),
                ),
              ];
            },
            body: const TabBarView(
              children: [
                EmptyScreen(),
                EmptyScreen(),
                SpecialScreen(),
                EmptyScreen(),
                EmptyScreen(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
