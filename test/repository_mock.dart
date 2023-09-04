import 'dart:convert';
import 'dart:io';

import 'package:flutter_gql/providers/characters_repository.dart';
import 'package:flutter_gql/gql/generated/query/characters.graphql.dart';
import 'package:mocktail/mocktail.dart';

class CharactersRepositoryMock extends Mock
    implements CharactersRepositoryImpl {}

Future<Map<String, dynamic>> loadFixture(String name) async {
  final file = File(name);
  return jsonDecode(await file.readAsString());
}

Future<List<Fragment$CharacterSubversions>> makeCharactersFixture() async {
  final fixture = await loadFixture(FIXTURE_CHARACTERS);
  final query = Query$GetVersionsOfCharacter.fromJson(fixture);

  final result = query.characters!.results!;
  result.removeWhere((element) => element == null);

  return Future(() => (result.map((e) => e!).toList()));
}

// ignore: constant_identifier_names
const FIXTURE_CHARACTERS = 'test_resources/characters_fixture.json';
