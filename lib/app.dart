import 'package:flutter/material.dart';
import 'package:flutter_gql/character_list_privider.dart';
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
      home: const ListPage(title: 'Flutter Demo Home Page'),
    );
  }
}

class ListPage extends HookWidget {
  const ListPage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    ValueNotifier<List<CharacterCellItem>> modelList = useState([]);

    Future<List<CharacterCellItem>> getItems() async {
      return CharacterListProvider().getInitialLoadItems();
    }

    useEffect(() {
      var result = getItems();
      return () {
        result;
      };
    }, []);

    return MaterialApp(
      home: Scaffold(
        body: ListView(
          shrinkWrap: true,
          children: modelList.value.map((e) {
            return ListTile(
              title: Text(e.tile),
              subtitle: Text(e.species),
            );
          }).toList(),
        ),
      ),
    );
  }
}
