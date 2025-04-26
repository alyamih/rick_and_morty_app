import 'package:dio/dio.dart';
import 'package:rick_and_morty_app/app/http/api_service.dart';
import 'package:rick_and_morty_app/features/characters/data/model/character.dart';

class CharactersRemoteDataSource {
  final DioClient _dioClient;

  CharactersRemoteDataSource(this._dioClient);

  Future<List<Character>> getCharacters({required int pageNumber}) async {
    final Response response = await _dioClient.dio.get(
      '/character',
      queryParameters: {'page': pageNumber},
    );

    final jsonResponse = response.data;
    final List characters = jsonResponse['results'];

    return characters
        .map((character) => Character.fromJson(character))
        .toList();
  }
}
