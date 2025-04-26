part of 'character_bloc.dart';

@freezed
class CharacterEvent with _$CharacterEvent {
  const factory CharacterEvent.getData() = _GetData;
  const factory CharacterEvent.getMore({
    required List<Character> characters,
    required int pageNumber,
  }) = _GetMore;
}
