import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty_app/features/characters/data/model/character.dart';
import 'package:rick_and_morty_app/features/characters/data/repositories/characters_repository.dart';

part 'character_event.dart';
part 'character_state.dart';
part 'character_bloc.freezed.dart';

class CharacterBloc extends Bloc<CharacterEvent, CharacterState> {
  CharacterBloc(this.characterRepository) : super(_Loading()) {
    on<_GetData>(_onGetData);
    on<_GetMore>(_onGetMore);
  }
  CharactersRepository characterRepository;

  FutureOr<void> _onGetData(
    _GetData event,
    Emitter<CharacterState> emit,
  ) async {
    emit(const _Loading());
    try {
      final pageNumber =
          state.mapOrNull(loaded: (value) => value.pageNumber) ?? 1;
      final data = await characterRepository.getCharacters(
        pageNumber: pageNumber,
      );
      if (data.isEmpty) {
        return emit(const _Empty());
      }
      emit(_Loaded(characters: data));
    } catch (e, stackTrace) {
      log('', error: e, stackTrace: stackTrace);
      emit(_Error(error: e, stackTrace: stackTrace));
    }
  }

  FutureOr<void> _onGetMore(
    _GetMore event,
    Emitter<CharacterState> emit,
  ) async {
    if (state.mapOrNull(loaded: (value) => !value.hasMore) ?? false) return;
    try {
      final pageNumber = event.pageNumber;
      final data = await characterRepository.getCharacters(
        pageNumber: pageNumber,
      );
      state.whenOrNull(
        loaded: (characters, pageNumber, hasMore) {
          emit(
            _Loaded(
              characters: [...characters, ...data],
              hasMore: true,
              pageNumber: event.pageNumber,
            ),
          );
        },
      );
    } on DioException catch (e, stackTrace) {
      if (e.response!.statusCode == 404) {
        state.whenOrNull(
          loaded: (characters, pageNumber, hasMore) {
            emit(
              _Loaded(
                characters: characters,
                hasMore: false,
                pageNumber: event.pageNumber,
              ),
            );
          },
        );
      } else {
        log('', error: e, stackTrace: stackTrace);
        emit(_Error(error: e, stackTrace: stackTrace));
      }
    } catch (e, stackTrace) {
      log('', error: e, stackTrace: stackTrace);
      emit(_Error(error: e, stackTrace: stackTrace));
    }
  }
}
