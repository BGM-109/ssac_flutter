import 'package:flutter/material.dart';
import 'package:hello_flutter/components/ads_slider.dart';
import 'package:hello_flutter/components/vehicle.dart';
import 'detail_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key key}) : super(key: key);

  final _items = [
    "택시",
    "블랙",
    "대리",
    "자전거",
    "택시",
    "택시",
  ];

  final _notice = [
    "첫번째 공지사항",
    "첫번째 공지사항",
    "첫번째 공지사항",
    "첫번째 공지사항",
    "첫번째 공지사항",
    "첫번째 공지사항",
    "첫번째 공지사항",
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      GridView.count(
        physics: NeverScrollableScrollPhysics(),
        crossAxisCount: 4,
        children: _items.map((e) => Vehicle(name: e)).toList(),
        shrinkWrap: true,
      ),
      AspectRatio(
        aspectRatio: 2 / 1,
        child: MyStatelessWidget(),
      ),
      ListView(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: _notice
              .map((e) => ListTile(
                  onTap: (){
                    Navigator.push<void>(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) => DetailScreen(),
                      ),
                    );
                  },
                  leading: Icon(Icons.notifications),
                  title: Text(e),
                  subtitle: Text("서브타이틀"),
                  trailing: Icon(Icons.arrow_right)))
              .toList()),
    ]);
  }
}
