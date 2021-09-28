import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AjaxProvider extends ChangeNotifier {
  List<int> cache = [];

  bool loading = false;
  bool hasMore = true;

  _makeRequest({
    required int nextId,
}) async {
    assert(nextId != null);

    await Future.delayed(const Duration(seconds: 1));

    return List.generate(20, (index) => nextId + index);
  }

  fetchItems({
    int nextId = 0,
}) async {

    loading = true;
    notifyListeners();
    final items = await _makeRequest(nextId: nextId);

    cache = [
      ...cache,
      ...items,
    ];
    loading = false;
    notifyListeners();
  }


}

