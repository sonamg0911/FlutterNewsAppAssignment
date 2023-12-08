// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewsListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Article> list) loaded,
    required TResult Function(String errorMessage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Article> list)? loaded,
    TResult? Function(String errorMessage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Article> list)? loaded,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewsListLoading value) loading,
    required TResult Function(NewsListLoaded value) loaded,
    required TResult Function(NewsListError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NewsListLoading value)? loading,
    TResult? Function(NewsListLoaded value)? loaded,
    TResult? Function(NewsListError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewsListLoading value)? loading,
    TResult Function(NewsListLoaded value)? loaded,
    TResult Function(NewsListError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsListStateCopyWith<$Res> {
  factory $NewsListStateCopyWith(
          NewsListState value, $Res Function(NewsListState) then) =
      _$NewsListStateCopyWithImpl<$Res, NewsListState>;
}

/// @nodoc
class _$NewsListStateCopyWithImpl<$Res, $Val extends NewsListState>
    implements $NewsListStateCopyWith<$Res> {
  _$NewsListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NewsListLoadingImplCopyWith<$Res> {
  factory _$$NewsListLoadingImplCopyWith(_$NewsListLoadingImpl value,
          $Res Function(_$NewsListLoadingImpl) then) =
      __$$NewsListLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NewsListLoadingImplCopyWithImpl<$Res>
    extends _$NewsListStateCopyWithImpl<$Res, _$NewsListLoadingImpl>
    implements _$$NewsListLoadingImplCopyWith<$Res> {
  __$$NewsListLoadingImplCopyWithImpl(
      _$NewsListLoadingImpl _value, $Res Function(_$NewsListLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NewsListLoadingImpl implements NewsListLoading {
  const _$NewsListLoadingImpl();

  @override
  String toString() {
    return 'NewsListState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NewsListLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Article> list) loaded,
    required TResult Function(String errorMessage) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Article> list)? loaded,
    TResult? Function(String errorMessage)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Article> list)? loaded,
    TResult Function(String errorMessage)? error,
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
    required TResult Function(NewsListLoading value) loading,
    required TResult Function(NewsListLoaded value) loaded,
    required TResult Function(NewsListError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NewsListLoading value)? loading,
    TResult? Function(NewsListLoaded value)? loaded,
    TResult? Function(NewsListError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewsListLoading value)? loading,
    TResult Function(NewsListLoaded value)? loaded,
    TResult Function(NewsListError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class NewsListLoading implements NewsListState {
  const factory NewsListLoading() = _$NewsListLoadingImpl;
}

/// @nodoc
abstract class _$$NewsListLoadedImplCopyWith<$Res> {
  factory _$$NewsListLoadedImplCopyWith(_$NewsListLoadedImpl value,
          $Res Function(_$NewsListLoadedImpl) then) =
      __$$NewsListLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Article> list});
}

/// @nodoc
class __$$NewsListLoadedImplCopyWithImpl<$Res>
    extends _$NewsListStateCopyWithImpl<$Res, _$NewsListLoadedImpl>
    implements _$$NewsListLoadedImplCopyWith<$Res> {
  __$$NewsListLoadedImplCopyWithImpl(
      _$NewsListLoadedImpl _value, $Res Function(_$NewsListLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_$NewsListLoadedImpl(
      null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<Article>,
    ));
  }
}

/// @nodoc

class _$NewsListLoadedImpl implements NewsListLoaded {
  const _$NewsListLoadedImpl(final List<Article> list) : _list = list;

  final List<Article> _list;
  @override
  List<Article> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'NewsListState.loaded(list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsListLoadedImpl &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsListLoadedImplCopyWith<_$NewsListLoadedImpl> get copyWith =>
      __$$NewsListLoadedImplCopyWithImpl<_$NewsListLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Article> list) loaded,
    required TResult Function(String errorMessage) error,
  }) {
    return loaded(list);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Article> list)? loaded,
    TResult? Function(String errorMessage)? error,
  }) {
    return loaded?.call(list);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Article> list)? loaded,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(list);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewsListLoading value) loading,
    required TResult Function(NewsListLoaded value) loaded,
    required TResult Function(NewsListError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NewsListLoading value)? loading,
    TResult? Function(NewsListLoaded value)? loaded,
    TResult? Function(NewsListError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewsListLoading value)? loading,
    TResult Function(NewsListLoaded value)? loaded,
    TResult Function(NewsListError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class NewsListLoaded implements NewsListState {
  const factory NewsListLoaded(final List<Article> list) = _$NewsListLoadedImpl;

  List<Article> get list;
  @JsonKey(ignore: true)
  _$$NewsListLoadedImplCopyWith<_$NewsListLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NewsListErrorImplCopyWith<$Res> {
  factory _$$NewsListErrorImplCopyWith(
          _$NewsListErrorImpl value, $Res Function(_$NewsListErrorImpl) then) =
      __$$NewsListErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$NewsListErrorImplCopyWithImpl<$Res>
    extends _$NewsListStateCopyWithImpl<$Res, _$NewsListErrorImpl>
    implements _$$NewsListErrorImplCopyWith<$Res> {
  __$$NewsListErrorImplCopyWithImpl(
      _$NewsListErrorImpl _value, $Res Function(_$NewsListErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$NewsListErrorImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NewsListErrorImpl implements NewsListError {
  const _$NewsListErrorImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'NewsListState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsListErrorImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsListErrorImplCopyWith<_$NewsListErrorImpl> get copyWith =>
      __$$NewsListErrorImplCopyWithImpl<_$NewsListErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Article> list) loaded,
    required TResult Function(String errorMessage) error,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Article> list)? loaded,
    TResult? Function(String errorMessage)? error,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Article> list)? loaded,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewsListLoading value) loading,
    required TResult Function(NewsListLoaded value) loaded,
    required TResult Function(NewsListError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NewsListLoading value)? loading,
    TResult? Function(NewsListLoaded value)? loaded,
    TResult? Function(NewsListError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewsListLoading value)? loading,
    TResult Function(NewsListLoaded value)? loaded,
    TResult Function(NewsListError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class NewsListError implements NewsListState {
  const factory NewsListError(final String errorMessage) = _$NewsListErrorImpl;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$NewsListErrorImplCopyWith<_$NewsListErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
