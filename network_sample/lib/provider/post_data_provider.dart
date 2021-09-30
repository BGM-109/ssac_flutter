import 'package:flutter/foundation.dart';
import 'package:network_sample/model/post.dart';
import 'package:network_sample/viewmodel/post_viewmodel.dart';

class PostDataProvider with ChangeNotifier {
  List<Post> _posts = [];
  bool isLoading = false;

  List<Post> get posts => _posts;

  getPostData() async {
    isLoading = true;
    _posts = await PostViewModel().getPagePostData();
    isLoading = false;

    notifyListeners();
  }
}
