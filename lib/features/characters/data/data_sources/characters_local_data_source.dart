import 'package:rick_and_morty_app/app/utils/services/extensions/sp_service_extension.dart';
import 'package:rick_and_morty_app/app/utils/services/sp_service.dart';
import 'package:rick_and_morty_app/core/shared_pref_keys.dart';
import 'package:rick_and_morty_app/features/characters/data/model/character.dart';

class CharactersLocalDataSource {
  Future<SpService> get dataSource async => await SpService.instance;

  Future<void> postData(List<Character> characters) async {
    (await dataSource).setCharactersData(SharedPrefKeys.characters, characters);
  }

  Future<void> addCharactersData(List<Character> characters) async {
    (await dataSource).addCharactersData(SharedPrefKeys.characters, characters);
  }

  Future<List<Character>> getData() async {
    var characters = (await dataSource).getCharactersData(
      SharedPrefKeys.characters,
    );
    return characters;
  }

  Future<void> putData(Character character) async {
    (await dataSource).addCharacterData(SharedPrefKeys.characters, character);
  }
}
