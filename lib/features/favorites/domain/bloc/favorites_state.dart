part of 'favorites_bloc.dart';

@freezed
class FavoritesState with _$FavoritesState {
  const factory FavoritesState.loading() = _Loading;
  const factory FavoritesState.loaded({
    required List<Character> characters,
    @Default(false) bool isAscendingByAlphabet,
  }) = _Loaded;
  const factory FavoritesState.error({
    required Object error,
    StackTrace? stackTrace,
  }) = _Error;
  const factory FavoritesState.empty() = _Empty;
}
