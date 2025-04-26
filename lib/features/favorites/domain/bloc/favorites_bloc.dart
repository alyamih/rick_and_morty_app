import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty_app/features/characters/data/model/character.dart';
import 'package:rick_and_morty_app/features/favorites/data/repositories/favorite_repository.dart';

part 'favorites_event.dart';
part 'favorites_state.dart';
part 'favorites_bloc.freezed.dart';

class FavoritesBloc extends Bloc<FavoritesEvent, FavoritesState> {
  FavoritesBloc(this.favoriteRepository) : super(const _Loading()) {
    on<_GetData>(_onGetData);
    on<_AddData>(_onAddData);
    on<_RemoveData>(_onRemoveData);
    on<_SortData>(_onSortData);
  }
  FavoriteRepository favoriteRepository;
  bool isFavorite(Character character) {
    return state.maybeMap(
      orElse: () => false,
      loaded:
          (value) =>
              value.characters
                  .where((element) => element.id == character.id)
                  .isNotEmpty,
    );
  }

  FutureOr<void> _onGetData(
    _GetData event,
    Emitter<FavoritesState> emit,
  ) async {
    emit(const _Loading());
    try {
      final data = await favoriteRepository.getData();
      if (data.isEmpty) {
        emit(_Empty());
      } else {
        emit(_Loaded(characters: data));
      }
    } catch (e, stackTrace) {
      log('', error: e, stackTrace: stackTrace);
      emit(_Error(error: e, stackTrace: stackTrace));
    }
  }

  FutureOr<void> _onAddData(
    _AddData event,
    Emitter<FavoritesState> emit,
  ) async {
    try {
      await favoriteRepository.putData(event.character);
      state.maybeWhen(
        orElse: () {
          emit(_Loaded(characters: [event.character]));
        },
        loaded: (characters, isAscendingByAlphabet) {
          emit(
            _Loaded(
              characters: [event.character, ...characters],
              isAscendingByAlphabet: isAscendingByAlphabet,
            ),
          );
        },
      );
    } catch (e, stackTrace) {
      log('', error: e, stackTrace: stackTrace);
      emit(_Error(error: e, stackTrace: stackTrace));
    }
  }

  FutureOr<void> _onRemoveData(
    _RemoveData event,
    Emitter<FavoritesState> emit,
  ) async {
    try {
      var favoriteCharacters = state.maybeWhen(
        orElse: () => <Character>[],
        loaded: (characters, _) => [...characters],
      );
      var newFavCharacters =
          favoriteCharacters
              .where((element) => element.id != event.character.id)
              .toList();
      await favoriteRepository.postData(newFavCharacters);

      state.maybeWhen(
        orElse: () {
          emit(_Loaded(characters: [event.character]));
        },
        loaded: (characters, isAscendingByAlphabet) {
          emit(
            _Loaded(
              characters: newFavCharacters,
              isAscendingByAlphabet: isAscendingByAlphabet,
            ),
          );
        },
      );
      if (newFavCharacters.isEmpty) {
        emit(_Empty());
      }
    } catch (e, stackTrace) {
      log('', error: e, stackTrace: stackTrace);
      emit(_Error(error: e, stackTrace: stackTrace));
    }
  }

  @override
  void onChange(Change<FavoritesState> change) {
    log('${change.currentState}\n\n${change.nextState}');
    super.onChange(change);
  }

  FutureOr<void> _onSortData(_SortData event, Emitter<FavoritesState> emit) {
    state.maybeWhen(
      orElse: () {
        emit(_Loaded(characters: []));
      },
      loaded: (characters, isAscendingByAlphabet) {
        emit(
          _Loaded(
            characters: characters.sorted(
              (a, b) =>
                  event.isAscendingByAlphabet
                      ? a.name.compareTo(b.name)
                      : b.name.compareTo(a.name),
            ),
            isAscendingByAlphabet: event.isAscendingByAlphabet,
          ),
        );
      },
    );
  }
}
