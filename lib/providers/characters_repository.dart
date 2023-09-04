import 'package:graphql/client.dart';
import '../gql/generated/query/characters.graphql.dart';

abstract class CharactersRepository {
  Future<List<Fragment$CharacterSubversions>> getCharacters(String name,
      {int page = 0});
}

class CharactersRepositoryImpl implements CharactersRepository {
  final GraphQLClient _client;

  CharactersRepositoryImpl(this._client);

  @override
  Future<List<Fragment$CharacterSubversions>> getCharacters(String name,
      {int page = 0}) async {
    final result = await _client.query$GetVersionsOfCharacter(
        Options$Query$GetVersionsOfCharacter(
            variables: Variables$Query$GetVersionsOfCharacter(
                name: name, page: page)));
    if (result.hasException) throw Exception('Could not load the data');

    final optionalArray = result.parsedData?.characters?.results ?? [];
    optionalArray.removeWhere((element) => element == null);

    return optionalArray.map((e) => e!).toList();
  }
}
