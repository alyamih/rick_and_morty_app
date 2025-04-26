part of 'character_bloc.dart';

@freezed
class CharacterState with _$CharacterState {
  const factory CharacterState.loading() = _Loading;
  const factory CharacterState.loaded({
    required List<Character> characters,
    @Default(1) int pageNumber,
    @Default(true) bool hasMore,
  }) = _Loaded;
  const factory CharacterState.error({
    required Object error,
    StackTrace? stackTrace,
  }) = _Error;
  const factory CharacterState.empty() = _Empty;
}
