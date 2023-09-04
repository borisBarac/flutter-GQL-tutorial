import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_gql/app.dart';

import 'repository_mock.dart';

void main() {
  testWidgets('ListPage can render using mocked data',
      (WidgetTester tester) async {
    final app = MaterialApp(
      home: ListPage(
        provider: CharacterListProviderMock.make(),
        title: 'MOCK DATA',
      ),
    );

    await tester.pumpWidget(HookBuilder(builder: (context) => app));
    await tester.pump(const Duration(milliseconds: 1000));

    final listView = find.byType(ListView);
    expect(listView, findsOneWidget);
  });
}
