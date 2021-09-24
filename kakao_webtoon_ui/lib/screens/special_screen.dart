import 'package:flutter/material.dart';
import 'package:kakao_webtoon_ui/components/webtoon_list.dart';

class SpecialScreen extends StatelessWidget {
  const SpecialScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        WebtoonList(
          title: "나혼자만 \n 레벨업",
          imageUrl: "assets/thumbnail1.gif",
          tagList: ["미친작화","미친작화","미친작화","미친작화","미친작화","미친작화","미친작화"],),
        WebtoonList(
          title: "트레이스",
          imageUrl: "assets/thumbnail2.gif",
          tagList: ["미친작화","미친작화","미친작화","미친작화","미친작화","미친작화","미친작화"],),
        WebtoonList(
          title: "경이로운 \n 소문",
          imageUrl: "assets/thumbnail3.gif",
          tagList: ["미친작화","미친작화","미친작화","미친작화","미친작화","미친작화","미친작화"],),
        WebtoonList(
          title: "녹음의 \n 관",
          imageUrl: "assets/thumbnail4.gif",
          tagList: ["미친작화","미친작화","미친작화","미친작화","미친작화","미친작화","미친작화"],),
      ],
    );
  }
}