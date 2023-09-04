import 'package:flutter/widgets.dart';
import 'package:flutter_gql/characters_repository.dart';
import 'package:flutter_gql/gql/gql_client.dart';

class CharacterCellItem {
  String tile;
  String species;

  CharacterCellItem(this.tile, this.species);
}

class CharacterListProvider {
  final CharactersRepository _charactersRepository;
  final String mainCharacter = 'Rick';

  CharacterListProvider([CharactersRepository? charactersRepository])
      : _charactersRepository = charactersRepository ??
            CharactersRepositoryImpl(createLiveClient());

  Future<List<CharacterCellItem>> getInitialLoadItems() async {
    try {
      return _charactersRepository
          .getCharacters(mainCharacter, page: 0)
          .then((value) {
        return value
            .map((e) => CharacterCellItem(e.name ?? '', e.species ?? 'Unknown'))
            .toList();
      });
    } catch (e) {
      debugPrint(e.toString());
      debugPrintStack();
      debugPrint(
          '------------------------------------------------------------------------------------');
      return [];
    }
  }
}
