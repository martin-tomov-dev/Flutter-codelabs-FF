import 'package:flutter_test/flutter_test.dart';
import 'package:gtk_flutter/main.dart';
import 'package:gtk_flutter/src/application_state.dart';
import 'package:provider/provider.dart';

void main() {
  testWidgets('Basic rendering', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(
      ChangeNotifierProvider(
        create: (context) => GTKApplicationState(),
        builder: (context, _) => GTKApp(),
      ),
    );

    // Verify that our counter starts at 0.
    expect(find.text('Firebase Meetup'), findsOneWidget);
    expect(find.text('January 1st'), findsNothing);
  });
}
