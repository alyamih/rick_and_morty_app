part of 'favorites_bloc.dart';

@freezed
class FavoritesEvent with _$FavoritesEvent {
  const factory FavoritesEvent.getData() = _GetData;
  const factory FavoritesEvent.addData(Character character) = _AddData;
  const factory FavoritesEvent.removeData(Character character) = _RemoveData;
  const factory FavoritesEvent.sortData(bool isAscendingByAlphabet) = _SortData;
}
