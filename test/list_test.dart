import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:app/vm/videometadatavm.dart';

void main() {
  setUpAll(() {
    TestWidgetsFlutterBinding.ensureInitialized();
  });

  test('Check video list is in descending order', () async {
    Future<List> item = VideoMetaDataVM().videolist();
    final List list = await item;
    int flag = 0;
    int i = 1;

    while (i < list.length) {
      int j = list[i]['date'].compareTo(list[i - 1]['date']);
      if (j == 1) {
        flag = 1;
      }
      i += 1;
    }

    expect(flag, 0);
  });
}
