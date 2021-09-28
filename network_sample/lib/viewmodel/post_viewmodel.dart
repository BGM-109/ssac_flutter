import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:network_sample/model/post.dart';

//데이터다룹니다.

class PostViewModel {
  String url = 'https://jsonplaceholder.typicode.com/posts';

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
}