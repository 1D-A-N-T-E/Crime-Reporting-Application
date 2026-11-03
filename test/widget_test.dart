import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:test1/main.dart';

void main() {
  testWidgets('home and account routes are displayed', (tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle();

    expect(find.text('SafeZone'), findsOneWidget);
    expect(find.text('Īpaši svarīgi!'), findsOneWidget);
    expect(find.text('Tuvākie brīdinājumi'), findsOneWidget);

    await tester.tap(find.text('Pieslēgties'));
    await tester.pumpAndSettle();
    expect(find.text('E-pasts'), findsOneWidget);
    expect(find.byType(TextField), findsNWidgets(2));

    await tester.tap(find.text('Izveidot kontu'));
    await tester.pumpAndSettle();
    expect(find.text('Reģistrācija'), findsOneWidget);
    expect(find.byType(TextField), findsNWidgets(6));

    await tester.tap(find.text('Sākums'));
    await tester.pumpAndSettle();
    expect(find.text('Tuvākie brīdinājumi'), findsOneWidget);
  });
}
