import 'package:flutter/material.dart';
import 'package:hello_flutter/components/slider_one.dart';

class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({Key key}) : super(key: key);

  final _adItems = [
    {
      'title': "그러게 일찍 좀 다니지 그랬어",
      'subTitle': "기왕 늦은거 택시 타자",
      'color': Colors.lightGreen,
      'imageUrl':
          "https://item.kakaocdn.net/do/b5d3d6a7b67fbf5afdaffb79fffbf8b18f324a0b9c48f77dbce3a43bd11ce785",
    },
    {
      'title': "그러게 일찍 좀 다니지 그랬어",
      'subTitle': "기왕 늦은거 택시 타자",
      'color': Colors.blue,
      'imageUrl':
          "https://item.kakaocdn.net/do/b5d3d6a7b67fbf5afdaffb79fffbf8b14022de826f725e10df604bf1b9725cfd",
    },
    {
      'title': "그러게 일찍 좀 다니지 그랬어",
      'subTitle': "기왕 늦은거 택시 타자",
      'color': Colors.red,
      'imageUrl':
          "https://item.kakaocdn.net/do/b5d3d6a7b67fbf5afdaffb79fffbf8b16fb33a4b4cf43b6605fc7a1e262f0845",
    }
  ];

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(initialPage: 0);
    return PageView(
      /// [PageView.scrollDirection] defaults to [Axis.horizontal].
      /// Use [Axis.vertical] to scroll vertically.
      scrollDirection: Axis.horizontal,
      controller: controller,
      children: _adItems
          .map((e) => SliderOne(
                title: e['title'],
                subTitle: e['subTitle'],
                color: e['color'],
                imageUrl: e['imageUrl'],
              ))
          .toList(),
    );
  }
}
