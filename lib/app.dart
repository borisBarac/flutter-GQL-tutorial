import 'package:flutter/material.dart';
import 'package:flutter_gql/providers/character_list_privider.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GQL Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ListPage(title: 'Flutter Demo Home Page'),
    );
  }
}

class ListPage extends HookWidget {
  ListPage({CharacterListProvider? provider, required this.title, super.key})
      : _provider = provider ?? CharacterListProvider();
  final String title;
  final CharacterListProvider _provider;

  Future<List<CharacterCellItem>> _getItems() async {
    debugPrint('loading');
    final items = await _provider.getInitialLoadItems();
    debugPrint('items: $items');
    return items;
  }

  @override
  Widget build(BuildContext context) {
    final future = useMemoized(_getItems, []);
    final snapShot = useFuture(future);
    final unwrappedData = snapShot.data ?? [];

    final listView = ListView(
      shrinkWrap: true,
      children: unwrappedData.map((e) {
        return ListTile(
          title: Text(e.tile),
          subtitle: Text(e.species),
        );
      }).toList(),
    );

    const errorView = Center(
      child: Text('Something went wrong!'),
    );

    const loadingView = Center(
      child: Text('Loading...'),
    );

    return Scaffold(
        body: snapShot.error != null
            ? errorView
            : snapShot.hasData
                ? listView
                : loadingView);
  }
}
