import 'package:rick_and_morty_app/features/characters/data/data_sources/characters_local_data_source.dart';
import 'package:rick_and_morty_app/features/characters/data/data_sources/characters_remote_data_source.dart';
import 'package:rick_and_morty_app/features/characters/data/model/character.dart';

class CharactersRepository {
  final CharactersLocalDataSource localDataSource;
  final CharactersRemoteDataSource remoteDataSource;

  CharactersRepository({
    required this.localDataSource,
    required this.remoteDataSource,
  });

  Future<List<Character>> getCharacters({required int pageNumber}) async {
    late final List<Character> characters;
    try {
      characters = await remoteDataSource.getCharacters(pageNumber: pageNumber);
      await localDataSource.addCharactersData(characters);
    } catch (e) {
      characters = await localDataSource.getData();
    }
    return characters;
  }
}
