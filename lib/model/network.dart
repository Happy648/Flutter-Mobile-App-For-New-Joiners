import 'package:flutter/services.dart' as rootBundle;
import 'dart:convert';

class NetworkCall {
  Future<List> readJson(String path) async {
    List _items = [];
    final String response = await rootBundle.rootBundle.loadString(path);
    final item = await json.decode(response);

    _items = item["videos"];

    return _items;
  }
}
