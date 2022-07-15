import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:app/main.dart';

void main() {
  testWidgets('BottomNavigationBar content test', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    final RenderBox box = tester.renderObject(find.byType(BottomNavigationBar));
    expect(box.size.height, kBottomNavigationBarHeight);
    expect(find.text('Home'), findsOneWidget);
    print("Found Home");
    expect(find.text('Video'), findsOneWidget);
    print("Found Video");
    expect(find.text('Profile'), findsOneWidget);
    print("Found Profile");
  });
}
