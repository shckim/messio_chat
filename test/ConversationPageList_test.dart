import 'package:flutter_test/flutter_test.dart';
import 'package:messiochat/main.dart';
import 'package:messiochat/pages/ConversationPage.dart';
import 'package:messiochat/pages/ConversationPageList.dart';

import 'package:flutter/material.dart';


void main(){
  const MaterialApp app = MaterialApp(
    home: Scaffold(
        body: const ConversationPageList()
    ),
  );
  testWidgets('ConversationPageList UI Test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(app);
    expect(find.byType(ConversationPage),findsOneWidget);
    expect(find.byType(PageView),findsOneWidget);

  });
}