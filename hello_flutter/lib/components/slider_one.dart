import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliderOne extends StatelessWidget {
  // const 를 사용하면 맨 처음 선언 한 인스턴스의 클래스만 지속적으로 생성된다 .
  const SliderOne({this.title, this.subTitle, this.imageUrl, this.color});

  final String title;
  final String subTitle;
  final String imageUrl;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      margin: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10.0,),
                Text(subTitle)
              ],
            ),
          ),
          Image.network(
            imageUrl,
            width: 120.0,
          ),
        ],
      ),
    );
  }
}


