import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:network_sample/model/post.dart';

//데이터다룹니다.

class PostViewModel {
  String url = 'https://jsonplaceholder.typicode.com/posts';
  String url2 = "https://jsonplaceholder.typicode.com/posts?_start=0&_limit=15";

  Future<List<Post>> getPost() async {
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      // 만약 서버가 OK 응답을 반환하면, JSON을 파싱합니다.
      List responseJson = json.decode(response.body);
      return responseJson.map((post) => Post.fromJson(post)).toList();
    } else {
      // 만약 응답이 OK가 아니면, 에러를 던집니다.
      throw Exception('Failed to load post');
    }
  }

  Future<List<Post>> getPagePostData() async {
    List<Post> result;

    final response = await http.get(Uri.parse(url2));
    if (response.statusCode == 200) {
      List items = json.decode(response.body);
      return items.map((item) => Post.fromJson(item)).toList();
    } else {
      throw Exception('Failed to load post');
    }
  }
}
