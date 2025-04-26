// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorites_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$FavoritesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getData,
    required TResult Function(Character character) addData,
    required TResult Function(Character character) removeData,
    required TResult Function(bool isAscendingByAlphabet) sortData,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getData,
    TResult? Function(Character character)? addData,
    TResult? Function(Character character)? removeData,
    TResult? Function(bool isAscendingByAlphabet)? sortData,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getData,
    TResult Function(Character character)? addData,
    TResult Function(Character character)? removeData,
    TResult Function(bool isAscendingByAlphabet)? sortData,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetData value) getData,
    required TResult Function(_AddData value) addData,
    required TResult Function(_RemoveData value) removeData,
    required TResult Function(_SortData value) sortData,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetData value)? getData,
    TResult? Function(_AddData value)? addData,
    TResult? Function(_RemoveData value)? removeData,
    TResult? Function(_SortData value)? sortData,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetData value)? getData,
    TResult Function(_AddData value)? addData,
    TResult Function(_RemoveData value)? removeData,
    TResult Function(_SortData value)? sortData,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritesEventCopyWith<$Res> {
  factory $FavoritesEventCopyWith(
    FavoritesEvent value,
    $Res Function(FavoritesEvent) then,
  ) = _$FavoritesEventCopyWithImpl<$Res, FavoritesEvent>;
}

/// @nodoc
class _$FavoritesEventCopyWithImpl<$Res, $Val extends FavoritesEvent>
    implements $FavoritesEventCopyWith<$Res> {
  _$FavoritesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetDataImplCopyWith<$Res> {
  factory _$$GetDataImplCopyWith(
    _$GetDataImpl value,
    $Res Function(_$GetDataImpl) then,
  ) = __$$GetDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetDataImplCopyWithImpl<$Res>
    extends _$FavoritesEventCopyWithImpl<$Res, _$GetDataImpl>
    implements _$$GetDataImplCopyWith<$Res> {
  __$$GetDataImplCopyWithImpl(
    _$GetDataImpl _value,
    $Res Function(_$GetDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetDataImpl implements _GetData {
  const _$GetDataImpl();

  @override
  String toString() {
    return 'FavoritesEvent.getData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getData,
    required TResult Function(Character character) addData,
    required TResult Function(Character character) removeData,
    required TResult Function(bool isAscendingByAlphabet) sortData,
  }) {
    return getData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getData,
    TResult? Function(Character character)? addData,
    TResult? Function(Character character)? removeData,
    TResult? Function(bool isAscendingByAlphabet)? sortData,
  }) {
    return getData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getData,
    TResult Function(Character character)? addData,
    TResult Function(Character character)? removeData,
    TResult Function(bool isAscendingByAlphabet)? sortData,
    required TResult orElse(),
  }) {
    if (getData != null) {
      return getData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetData value) getData,
    required TResult Function(_AddData value) addData,
    required TResult Function(_RemoveData value) removeData,
    required TResult Function(_SortData value) sortData,
  }) {
    return getData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetData value)? getData,
    TResult? Function(_AddData value)? addData,
    TResult? Function(_RemoveData value)? removeData,
    TResult? Function(_SortData value)? sortData,
  }) {
    return getData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetData value)? getData,
    TResult Function(_AddData value)? addData,
    TResult Function(_RemoveData value)? removeData,
    TResult Function(_SortData value)? sortData,
    required TResult orElse(),
  }) {
    if (getData != null) {
      return getData(this);
    }
    return orElse();
  }
}

abstract class _GetData implements FavoritesEvent {
  const factory _GetData() = _$GetDataImpl;
}

/// @nodoc
abstract class _$$AddDataImplCopyWith<$Res> {
  factory _$$AddDataImplCopyWith(
    _$AddDataImpl value,
    $Res Function(_$AddDataImpl) then,
  ) = __$$AddDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Character character});

  $CharacterCopyWith<$Res> get character;
}

/// @nodoc
class __$$AddDataImplCopyWithImpl<$Res>
    extends _$FavoritesEventCopyWithImpl<$Res, _$AddDataImpl>
    implements _$$AddDataImplCopyWith<$Res> {
  __$$AddDataImplCopyWithImpl(
    _$AddDataImpl _value,
    $Res Function(_$AddDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? character = null}) {
    return _then(
      _$AddDataImpl(
        null == character
            ? _value.character
            : character // ignore: cast_nullable_to_non_nullable
                as Character,
      ),
    );
  }

  /// Create a copy of FavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CharacterCopyWith<$Res> get character {
    return $CharacterCopyWith<$Res>(_value.character, (value) {
      return _then(_value.copyWith(character: value));
    });
  }
}

/// @nodoc

class _$AddDataImpl implements _AddData {
  const _$AddDataImpl(this.character);

  @override
  final Character character;

  @override
  String toString() {
    return 'FavoritesEvent.addData(character: $character)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddDataImpl &&
            (identical(other.character, character) ||
                other.character == character));
  }

  @override
  int get hashCode => Object.hash(runtimeType, character);

  /// Create a copy of FavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddDataImplCopyWith<_$AddDataImpl> get copyWith =>
      __$$AddDataImplCopyWithImpl<_$AddDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getData,
    required TResult Function(Character character) addData,
    required TResult Function(Character character) removeData,
    required TResult Function(bool isAscendingByAlphabet) sortData,
  }) {
    return addData(character);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getData,
    TResult? Function(Character character)? addData,
    TResult? Function(Character character)? removeData,
    TResult? Function(bool isAscendingByAlphabet)? sortData,
  }) {
    return addData?.call(character);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getData,
    TResult Function(Character character)? addData,
    TResult Function(Character character)? removeData,
    TResult Function(bool isAscendingByAlphabet)? sortData,
    required TResult orElse(),
  }) {
    if (addData != null) {
      return addData(character);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetData value) getData,
    required TResult Function(_AddData value) addData,
    required TResult Function(_RemoveData value) removeData,
    required TResult Function(_SortData value) sortData,
  }) {
    return addData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetData value)? getData,
    TResult? Function(_AddData value)? addData,
    TResult? Function(_RemoveData value)? removeData,
    TResult? Function(_SortData value)? sortData,
  }) {
    return addData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetData value)? getData,
    TResult Function(_AddData value)? addData,
    TResult Function(_RemoveData value)? removeData,
    TResult Function(_SortData value)? sortData,
    required TResult orElse(),
  }) {
    if (addData != null) {
      return addData(this);
    }
    return orElse();
  }
}

abstract class _AddData implements FavoritesEvent {
  const factory _AddData(final Character character) = _$AddDataImpl;

  Character get character;

  /// Create a copy of FavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddDataImplCopyWith<_$AddDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveDataImplCopyWith<$Res> {
  factory _$$RemoveDataImplCopyWith(
    _$RemoveDataImpl value,
    $Res Function(_$RemoveDataImpl) then,
  ) = __$$RemoveDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Character character});

  $CharacterCopyWith<$Res> get character;
}

/// @nodoc
class __$$RemoveDataImplCopyWithImpl<$Res>
    extends _$FavoritesEventCopyWithImpl<$Res, _$RemoveDataImpl>
    implements _$$RemoveDataImplCopyWith<$Res> {
  __$$RemoveDataImplCopyWithImpl(
    _$RemoveDataImpl _value,
    $Res Function(_$RemoveDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? character = null}) {
    return _then(
      _$RemoveDataImpl(
        null == character
            ? _value.character
            : character // ignore: cast_nullable_to_non_nullable
                as Character,
      ),
    );
  }

  /// Create a copy of FavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CharacterCopyWith<$Res> get character {
    return $CharacterCopyWith<$Res>(_value.character, (value) {
      return _then(_value.copyWith(character: value));
    });
  }
}

/// @nodoc

class _$RemoveDataImpl implements _RemoveData {
  const _$RemoveDataImpl(this.character);

  @override
  final Character character;

  @override
  String toString() {
    return 'FavoritesEvent.removeData(character: $character)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveDataImpl &&
            (identical(other.character, character) ||
                other.character == character));
  }

  @override
  int get hashCode => Object.hash(runtimeType, character);

  /// Create a copy of FavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveDataImplCopyWith<_$RemoveDataImpl> get copyWith =>
      __$$RemoveDataImplCopyWithImpl<_$RemoveDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getData,
    required TResult Function(Character character) addData,
    required TResult Function(Character character) removeData,
    required TResult Function(bool isAscendingByAlphabet) sortData,
  }) {
    return removeData(character);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getData,
    TResult? Function(Character character)? addData,
    TResult? Function(Character character)? removeData,
    TResult? Function(bool isAscendingByAlphabet)? sortData,
  }) {
    return removeData?.call(character);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getData,
    TResult Function(Character character)? addData,
    TResult Function(Character character)? removeData,
    TResult Function(bool isAscendingByAlphabet)? sortData,
    required TResult orElse(),
  }) {
    if (removeData != null) {
      return removeData(character);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetData value) getData,
    required TResult Function(_AddData value) addData,
    required TResult Function(_RemoveData value) removeData,
    required TResult Function(_SortData value) sortData,
  }) {
    return removeData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetData value)? getData,
    TResult? Function(_AddData value)? addData,
    TResult? Function(_RemoveData value)? removeData,
    TResult? Function(_SortData value)? sortData,
  }) {
    return removeData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetData value)? getData,
    TResult Function(_AddData value)? addData,
    TResult Function(_RemoveData value)? removeData,
    TResult Function(_SortData value)? sortData,
    required TResult orElse(),
  }) {
    if (removeData != null) {
      return removeData(this);
    }
    return orElse();
  }
}

abstract class _RemoveData implements FavoritesEvent {
  const factory _RemoveData(final Character character) = _$RemoveDataImpl;

  Character get character;

  /// Create a copy of FavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemoveDataImplCopyWith<_$RemoveDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SortDataImplCopyWith<$Res> {
  factory _$$SortDataImplCopyWith(
    _$SortDataImpl value,
    $Res Function(_$SortDataImpl) then,
  ) = __$$SortDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isAscendingByAlphabet});
}

/// @nodoc
class __$$SortDataImplCopyWithImpl<$Res>
    extends _$FavoritesEventCopyWithImpl<$Res, _$SortDataImpl>
    implements _$$SortDataImplCopyWith<$Res> {
  __$$SortDataImplCopyWithImpl(
    _$SortDataImpl _value,
    $Res Function(_$SortDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? isAscendingByAlphabet = null}) {
    return _then(
      _$SortDataImpl(
        null == isAscendingByAlphabet
            ? _value.isAscendingByAlphabet
            : isAscendingByAlphabet // ignore: cast_nullable_to_non_nullable
                as bool,
      ),
    );
  }
}

/// @nodoc

class _$SortDataImpl implements _SortData {
  const _$SortDataImpl(this.isAscendingByAlphabet);

  @override
  final bool isAscendingByAlphabet;

  @override
  String toString() {
    return 'FavoritesEvent.sortData(isAscendingByAlphabet: $isAscendingByAlphabet)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SortDataImpl &&
            (identical(other.isAscendingByAlphabet, isAscendingByAlphabet) ||
                other.isAscendingByAlphabet == isAscendingByAlphabet));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isAscendingByAlphabet);

  /// Create a copy of FavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SortDataImplCopyWith<_$SortDataImpl> get copyWith =>
      __$$SortDataImplCopyWithImpl<_$SortDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getData,
    required TResult Function(Character character) addData,
    required TResult Function(Character character) removeData,
    required TResult Function(bool isAscendingByAlphabet) sortData,
  }) {
    return sortData(isAscendingByAlphabet);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getData,
    TResult? Function(Character character)? addData,
    TResult? Function(Character character)? removeData,
    TResult? Function(bool isAscendingByAlphabet)? sortData,
  }) {
    return sortData?.call(isAscendingByAlphabet);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getData,
    TResult Function(Character character)? addData,
    TResult Function(Character character)? removeData,
    TResult Function(bool isAscendingByAlphabet)? sortData,
    required TResult orElse(),
  }) {
    if (sortData != null) {
      return sortData(isAscendingByAlphabet);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetData value) getData,
    required TResult Function(_AddData value) addData,
    required TResult Function(_RemoveData value) removeData,
    required TResult Function(_SortData value) sortData,
  }) {
    return sortData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetData value)? getData,
    TResult? Function(_AddData value)? addData,
    TResult? Function(_RemoveData value)? removeData,
    TResult? Function(_SortData value)? sortData,
  }) {
    return sortData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetData value)? getData,
    TResult Function(_AddData value)? addData,
    TResult Function(_RemoveData value)? removeData,
    TResult Function(_SortData value)? sortData,
    required TResult orElse(),
  }) {
    if (sortData != null) {
      return sortData(this);
    }
    return orElse();
  }
}

abstract class _SortData implements FavoritesEvent {
  const factory _SortData(final bool isAscendingByAlphabet) = _$SortDataImpl;

  bool get isAscendingByAlphabet;

  /// Create a copy of FavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SortDataImplCopyWith<_$SortDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FavoritesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
      List<Character> characters,
      bool isAscendingByAlphabet,
    )
    loaded,
    required TResult Function(Object error, StackTrace? stackTrace) error,
    required TResult Function() empty,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Character> characters, bool isAscendingByAlphabet)?
    loaded,
    TResult? Function(Object error, StackTrace? stackTrace)? error,
    TResult? Function()? empty,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Character> characters, bool isAscendingByAlphabet)?
    loaded,
    TResult Function(Object error, StackTrace? stackTrace)? error,
    TResult Function()? empty,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Empty value) empty,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Empty value)? empty,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Empty value)? empty,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritesStateCopyWith<$Res> {
  factory $FavoritesStateCopyWith(
    FavoritesState value,
    $Res Function(FavoritesState) then,
  ) = _$FavoritesStateCopyWithImpl<$Res, FavoritesState>;
}

/// @nodoc
class _$FavoritesStateCopyWithImpl<$Res, $Val extends FavoritesState>
    implements $FavoritesStateCopyWith<$Res> {
  _$FavoritesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FavoritesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
    _$LoadingImpl value,
    $Res Function(_$LoadingImpl) then,
  ) = __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$FavoritesStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
    _$LoadingImpl _value,
    $Res Function(_$LoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FavoritesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'FavoritesState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
      List<Character> characters,
      bool isAscendingByAlphabet,
    )
    loaded,
    required TResult Function(Object error, StackTrace? stackTrace) error,
    required TResult Function() empty,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Character> characters, bool isAscendingByAlphabet)?
    loaded,
    TResult? Function(Object error, StackTrace? stackTrace)? error,
    TResult? Function()? empty,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Character> characters, bool isAscendingByAlphabet)?
    loaded,
    TResult Function(Object error, StackTrace? stackTrace)? error,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Empty value) empty,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Empty value)? empty,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Empty value)? empty,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements FavoritesState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
    _$LoadedImpl value,
    $Res Function(_$LoadedImpl) then,
  ) = __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Character> characters, bool isAscendingByAlphabet});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$FavoritesStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
    _$LoadedImpl _value,
    $Res Function(_$LoadedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FavoritesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? characters = null, Object? isAscendingByAlphabet = null}) {
    return _then(
      _$LoadedImpl(
        characters:
            null == characters
                ? _value._characters
                : characters // ignore: cast_nullable_to_non_nullable
                    as List<Character>,
        isAscendingByAlphabet:
            null == isAscendingByAlphabet
                ? _value.isAscendingByAlphabet
                : isAscendingByAlphabet // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl({
    required final List<Character> characters,
    this.isAscendingByAlphabet = false,
  }) : _characters = characters;

  final List<Character> _characters;
  @override
  List<Character> get characters {
    if (_characters is EqualUnmodifiableListView) return _characters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_characters);
  }

  @override
  @JsonKey()
  final bool isAscendingByAlphabet;

  @override
  String toString() {
    return 'FavoritesState.loaded(characters: $characters, isAscendingByAlphabet: $isAscendingByAlphabet)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(
              other._characters,
              _characters,
            ) &&
            (identical(other.isAscendingByAlphabet, isAscendingByAlphabet) ||
                other.isAscendingByAlphabet == isAscendingByAlphabet));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_characters),
    isAscendingByAlphabet,
  );

  /// Create a copy of FavoritesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
      List<Character> characters,
      bool isAscendingByAlphabet,
    )
    loaded,
    required TResult Function(Object error, StackTrace? stackTrace) error,
    required TResult Function() empty,
  }) {
    return loaded(characters, isAscendingByAlphabet);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Character> characters, bool isAscendingByAlphabet)?
    loaded,
    TResult? Function(Object error, StackTrace? stackTrace)? error,
    TResult? Function()? empty,
  }) {
    return loaded?.call(characters, isAscendingByAlphabet);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Character> characters, bool isAscendingByAlphabet)?
    loaded,
    TResult Function(Object error, StackTrace? stackTrace)? error,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(characters, isAscendingByAlphabet);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Empty value) empty,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Empty value)? empty,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Empty value)? empty,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements FavoritesState {
  const factory _Loaded({
    required final List<Character> characters,
    final bool isAscendingByAlphabet,
  }) = _$LoadedImpl;

  List<Character> get characters;
  bool get isAscendingByAlphabet;

  /// Create a copy of FavoritesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
    _$ErrorImpl value,
    $Res Function(_$ErrorImpl) then,
  ) = __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace? stackTrace});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$FavoritesStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
    _$ErrorImpl _value,
    $Res Function(_$ErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FavoritesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? error = null, Object? stackTrace = freezed}) {
    return _then(
      _$ErrorImpl(
        error: null == error ? _value.error : error,
        stackTrace:
            freezed == stackTrace
                ? _value.stackTrace
                : stackTrace // ignore: cast_nullable_to_non_nullable
                    as StackTrace?,
      ),
    );
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl({required this.error, this.stackTrace});

  @override
  final Object error;
  @override
  final StackTrace? stackTrace;

  @override
  String toString() {
    return 'FavoritesState.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(error),
    stackTrace,
  );

  /// Create a copy of FavoritesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
      List<Character> characters,
      bool isAscendingByAlphabet,
    )
    loaded,
    required TResult Function(Object error, StackTrace? stackTrace) error,
    required TResult Function() empty,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Character> characters, bool isAscendingByAlphabet)?
    loaded,
    TResult? Function(Object error, StackTrace? stackTrace)? error,
    TResult? Function()? empty,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Character> characters, bool isAscendingByAlphabet)?
    loaded,
    TResult Function(Object error, StackTrace? stackTrace)? error,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Empty value) empty,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Empty value)? empty,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Empty value)? empty,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements FavoritesState {
  const factory _Error({
    required final Object error,
    final StackTrace? stackTrace,
  }) = _$ErrorImpl;

  Object get error;
  StackTrace? get stackTrace;

  /// Create a copy of FavoritesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmptyImplCopyWith<$Res> {
  factory _$$EmptyImplCopyWith(
    _$EmptyImpl value,
    $Res Function(_$EmptyImpl) then,
  ) = __$$EmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmptyImplCopyWithImpl<$Res>
    extends _$FavoritesStateCopyWithImpl<$Res, _$EmptyImpl>
    implements _$$EmptyImplCopyWith<$Res> {
  __$$EmptyImplCopyWithImpl(
    _$EmptyImpl _value,
    $Res Function(_$EmptyImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FavoritesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$EmptyImpl implements _Empty {
  const _$EmptyImpl();

  @override
  String toString() {
    return 'FavoritesState.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
      List<Character> characters,
      bool isAscendingByAlphabet,
    )
    loaded,
    required TResult Function(Object error, StackTrace? stackTrace) error,
    required TResult Function() empty,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Character> characters, bool isAscendingByAlphabet)?
    loaded,
    TResult? Function(Object error, StackTrace? stackTrace)? error,
    TResult? Function()? empty,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Character> characters, bool isAscendingByAlphabet)?
    loaded,
    TResult Function(Object error, StackTrace? stackTrace)? error,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Empty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Empty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Empty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty implements FavoritesState {
  const factory _Empty() = _$EmptyImpl;
}
