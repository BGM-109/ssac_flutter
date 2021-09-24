import 'package:flutter/material.dart';
import 'package:kakao_webtoon_ui/components/tag_box.dart';

class WebtoonList extends StatefulWidget {
  const WebtoonList({
    Key? key,
    required this.title,
    required this.imageUrl,
    required this.tagList,
  }) : super(key: key);

  final String title;
  final String imageUrl;
  final List<String> tagList;

  @override
  State<WebtoonList> createState() => _WebtoonListState();
}

class _WebtoonListState extends State<WebtoonList> {


  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(widget.imageUrl),
        Positioned(
          bottom: 100,
          child: Text(
            widget.title,
            style: TextStyle(
              fontSize: 50.0,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Positioned(
          bottom: 20,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: widget.tagList.map((e) => TagBox(tag: e)).toList(),
            ),
          ),
        ),
      ],
    );
  }
}
