import 'dart:convert';

import 'package:rick_and_morty_app/app/utils/services/sp_service.dart';
import 'package:rick_and_morty_app/features/characters/data/model/character.dart';

extension CharactersSp on SpService {
  List<Character> getCharactersData(String key) {
    return getListData(key)
            ?.map(
              (e) => Character.fromJson(jsonDecode(e) as Map<String, dynamic>),
            )
            .toList() ??
        [];
  }

  Future<void> setCharactersData(String key, List<Character> value) async {
    await setListData(key, value.map((e) => jsonEncode(e)).toList());
  }

  Future<void> addCharactersData(String key, List<Character> value) async {
    await addListData(key, value.map((e) => jsonEncode(e)).toList());
  }

  addCharacterData(String key, Character value) async {
    var characters = getCharactersData(key);
    characters.add(value);
    await setCharactersData(key, characters);
  }

  removeCharactersData(String key, Character value) async {
    var characters = getCharactersData(key);
    characters.remove(value);
    await setCharactersData(key, characters);
  }
}
