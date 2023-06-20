import 'package:custom_libp2p_example/main.dart' as app;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('CustomLibP2P', () {
    var input =
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras orci ex, pellentesque quis lobortis in";

    var dyScroll = 200.0;
    final list = find.byType(Scrollable).first;

    final parent = find.byKey(ValueKey("main-column"));

    group('Basic', () {
      testWidgets('Get Hello Message Test', (WidgetTester tester) async {
        final instance = app.MyApp();
        await tester.pumpWidget(instance);
        await tester.pumpAndSettle();

        var container = find.descendant(
          of: parent,
          matching: find.byKey(ValueKey('username-box')),
        );
        await tester.scrollUntilVisible(container, dyScroll, scrollable: list);
        await tester.pumpAndSettle();

        await tester.enterText(
            find.descendant(
                of: container,
                matching: find.byKey(ValueKey('username-text-field'))),
            input);

        await tester.tap(
          find.descendant(
              of: parent,
              matching: find.byKey(ValueKey('submit-get-hello-message'))),
        );
        await tester.pumpAndSettle();

        var resultContainer = find.descendant(
            of: parent, matching: find.byKey(ValueKey('message-wrap')));
        var resultSelector = find.descendant(
            of: resultContainer,
            matching: find.byKey(ValueKey('message-from-go')));

        await expectLater(resultSelector, findsWidgets);
        var result = resultSelector.evaluate().single.widget as Text;
        expect(result.data == 'Hello $input this is a dummy function!', true);
      });
    });
  });
}
