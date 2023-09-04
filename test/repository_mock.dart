import 'dart:convert';
import 'dart:io';

import 'package:flutter_gql/providers/character_list_privider.dart';
import 'package:flutter_gql/providers/characters_repository.dart';
import 'package:flutter_gql/gql/generated/query/characters.graphql.dart';
import 'package:mocktail/mocktail.dart';

/// Mocktail class for [CharactersRepository]
class CharactersRepositoryMock extends Mock
    implements CharactersRepositoryImpl {}

/// Mocktail is giving problems when used in UI tests, especially when we need to inject a provider
/// So we just use a mock with UI objects
class CharacterListProviderMock extends CharacterListProvider {
  CharacterListProviderMock(CharactersRepositoryMock? repo) : super(repo);

  static CharacterListProviderMock make() {
    return CharacterListProviderMock(null);
  }

  @override
  Future<List<CharacterCellItem>> getInitialLoadItems() {
    return Future(
      () => [
        CharacterCellItem('rick0', 'human0'),
        CharacterCellItem('rick1', 'human1'),
        CharacterCellItem('rick2', 'human2')
      ],
    );
  }
}

Future<Map<String, dynamic>> _loadFixture(String name) async {
  final file = File(name);
  return jsonDecode(await file.readAsString());
}

/// Fixture helper to load the characters fixture
Future<List<Fragment$CharacterSubversions>> makeCharactersFixture() async {
  final fixture = await _loadFixture(FIXTURE_CHARACTERS);
  final query = Query$GetVersionsOfCharacter.fromJson(fixture);

  final result = query.characters!.results!;
  result.removeWhere((element) => element == null);

  return Future(() => (result.map((e) => e!).toList()));
}

// ignore: constant_identifier_names
const FIXTURE_CHARACTERS = 'test_resources/characters_fixture.json';
