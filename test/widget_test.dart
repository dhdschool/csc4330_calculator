// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:calculator/main.dart';

void main() {
  testWidgets('Add', (WidgetTester tester) async {
    
    expect(find.byIcon(Icons.add), findsOneWidget);
  
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

  });
  testWidgets('Sub', (WidgetTester tester) async {
    expect(find.byIcon(Icons.remove), findsOneWidget);

    await tester.tap(find.byIcon(Icons.remove));
    await tester.pump();
  });

   testWidgets('Divide', (WidgetTester tester) async {
    expect(find.byIcon(CupertinoIcons.divide), findsOneWidget);

    await tester.tap(find.byIcon(CupertinoIcons.divide));
    await tester.pump();
  });

   testWidgets('Mult', (WidgetTester tester) async {
    expect(find.byIcon(Icons.close), findsOneWidget);

    await tester.tap(find.byIcon(Icons.close));
    await tester.pump();
  });

   testWidgets('Equal', (WidgetTester tester) async {
    expect(find.byIcon(CupertinoIcons.divide), findsOneWidget);

    await tester.tap(find.byIcon(CupertinoIcons.divide));
    await tester.pump();
  });
}
