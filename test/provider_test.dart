import 'package:flutter_gql/providers/character_list_privider.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'repository_mock.dart';

void main() {
  group('CharactersRepositoryMock:', () {
    var repo = CharactersRepositoryMock();

    test('mock and fixture are working', () async {
      when(() => repo.getCharacters(any())).thenAnswer((invocation) async {
        return await makeCharactersFixture();
      });

      final res = await repo.getCharacters('Rick');
      expect(res.length, greaterThan(0));

      verify(() => repo.getCharacters(any())).called(1);
    });

    test('mock can throw', () async {
      when(() => repo.getCharacters(any())).thenAnswer(
          (invocation) => throw Exception('Could not load the data'));

      expect(() => repo.getCharacters('Rick'), throwsA(isA<Exception>()));
    });
  });

  group('CharactersProvider:', () {
    var workingRepo = CharactersRepositoryMock();
    var failRepo = CharactersRepositoryMock();

    setUpAll(() {
      when(() => workingRepo.getCharacters(any()))
          .thenAnswer((invocation) async {
        return await makeCharactersFixture();
      });

      when(() => failRepo.getCharacters(any())).thenAnswer(
        (invocation) => throw Exception('Could not load the data'),
      );
    });

    test('can return data', () async {
      final provider = CharacterListProvider(workingRepo);

      final res = await provider.getInitialLoadItems();
      expect(res.length, greaterThan(0));
      expect(res.first, isInstanceOf<CharacterCellItem>());

      verify(() => workingRepo.getCharacters(any())).called(greaterThan(0));
    });

    test('returns a empty array on error', () async {
      final provider = CharacterListProvider(failRepo);

      final res = await provider.getInitialLoadItems();
      expect(res.length, equals(0));

      expect(() => failRepo.getCharacters('Rick'), throwsA(isA<Exception>()));
    });
  });
}
