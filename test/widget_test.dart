import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hello_flutter/main.dart';

void main() {
  testWidgets('Personal info app shows bottom navigation and switches screens',
      (WidgetTester tester) async {
    await tester.pumpWidget(const PersonalInfoApp());

    expect(find.byType(BottomNavigationBar), findsOneWidget);
    expect(
      find.descendant(
        of: find.byType(AppBar),
        matching: find.text('Hello Flutter'),
      ),
      findsOneWidget,
    );

    await tester.tap(find.text('Info'));
    await tester.pumpAndSettle();

    expect(
      find.descendant(
        of: find.byType(AppBar),
        matching: find.text('My Portfolio'),
      ),
      findsOneWidget,
    );
  });
}
