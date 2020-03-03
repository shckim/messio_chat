import 'package:flutter_test/flutter_test.dart';
import 'package:messiochat/main.dart';
import 'package:messiochat/pages/ConversationPageList.dart';

void main() {
  testWidgets('Main UI Test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(Messio());

    expect(find.byType(ConversationPageList),findsOneWidget);

  });
}