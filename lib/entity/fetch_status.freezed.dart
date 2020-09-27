// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'fetch_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$FetchStatusTearOff {
  const _$FetchStatusTearOff();

// ignore: unused_element
  FetchLoading loading() {
    return const FetchLoading();
  }

// ignore: unused_element
  FetchError error(String message) {
    return FetchError(
      message,
    );
  }

// ignore: unused_element
  FetchLoaded loaded() {
    return const FetchLoaded();
  }
}

// ignore: unused_element
const $FetchStatus = _$FetchStatusTearOff();

mixin _$FetchStatus {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result error(String message),
    @required Result loaded(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result error(String message),
    Result loaded(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(FetchLoading value),
    @required Result error(FetchError value),
    @required Result loaded(FetchLoaded value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(FetchLoading value),
    Result error(FetchError value),
    Result loaded(FetchLoaded value),
    @required Result orElse(),
  });
}

abstract class $FetchStatusCopyWith<$Res> {
  factory $FetchStatusCopyWith(
          FetchStatus value, $Res Function(FetchStatus) then) =
      _$FetchStatusCopyWithImpl<$Res>;
}

class _$FetchStatusCopyWithImpl<$Res> implements $FetchStatusCopyWith<$Res> {
  _$FetchStatusCopyWithImpl(this._value, this._then);

  final FetchStatus _value;
  // ignore: unused_field
  final $Res Function(FetchStatus) _then;
}

abstract class $FetchLoadingCopyWith<$Res> {
  factory $FetchLoadingCopyWith(
          FetchLoading value, $Res Function(FetchLoading) then) =
      _$FetchLoadingCopyWithImpl<$Res>;
}

class _$FetchLoadingCopyWithImpl<$Res> extends _$FetchStatusCopyWithImpl<$Res>
    implements $FetchLoadingCopyWith<$Res> {
  _$FetchLoadingCopyWithImpl(
      FetchLoading _value, $Res Function(FetchLoading) _then)
      : super(_value, (v) => _then(v as FetchLoading));

  @override
  FetchLoading get _value => super._value as FetchLoading;
}

class _$FetchLoading implements FetchLoading {
  const _$FetchLoading();

  @override
  String toString() {
    return 'FetchStatus.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FetchLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result error(String message),
    @required Result loaded(),
  }) {
    assert(loading != null);
    assert(error != null);
    assert(loaded != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result error(String message),
    Result loaded(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(FetchLoading value),
    @required Result error(FetchError value),
    @required Result loaded(FetchLoaded value),
  }) {
    assert(loading != null);
    assert(error != null);
    assert(loaded != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(FetchLoading value),
    Result error(FetchError value),
    Result loaded(FetchLoaded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class FetchLoading implements FetchStatus {
  const factory FetchLoading() = _$FetchLoading;
}

abstract class $FetchErrorCopyWith<$Res> {
  factory $FetchErrorCopyWith(
          FetchError value, $Res Function(FetchError) then) =
      _$FetchErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

class _$FetchErrorCopyWithImpl<$Res> extends _$FetchStatusCopyWithImpl<$Res>
    implements $FetchErrorCopyWith<$Res> {
  _$FetchErrorCopyWithImpl(FetchError _value, $Res Function(FetchError) _then)
      : super(_value, (v) => _then(v as FetchError));

  @override
  FetchError get _value => super._value as FetchError;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(FetchError(
      message == freezed ? _value.message : message as String,
    ));
  }
}

class _$FetchError implements FetchError {
  const _$FetchError(this.message) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'FetchStatus.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FetchError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  $FetchErrorCopyWith<FetchError> get copyWith =>
      _$FetchErrorCopyWithImpl<FetchError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result error(String message),
    @required Result loaded(),
  }) {
    assert(loading != null);
    assert(error != null);
    assert(loaded != null);
    return error(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result error(String message),
    Result loaded(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(FetchLoading value),
    @required Result error(FetchError value),
    @required Result loaded(FetchLoaded value),
  }) {
    assert(loading != null);
    assert(error != null);
    assert(loaded != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(FetchLoading value),
    Result error(FetchError value),
    Result loaded(FetchLoaded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class FetchError implements FetchStatus {
  const factory FetchError(String message) = _$FetchError;

  String get message;
  $FetchErrorCopyWith<FetchError> get copyWith;
}

abstract class $FetchLoadedCopyWith<$Res> {
  factory $FetchLoadedCopyWith(
          FetchLoaded value, $Res Function(FetchLoaded) then) =
      _$FetchLoadedCopyWithImpl<$Res>;
}

class _$FetchLoadedCopyWithImpl<$Res> extends _$FetchStatusCopyWithImpl<$Res>
    implements $FetchLoadedCopyWith<$Res> {
  _$FetchLoadedCopyWithImpl(
      FetchLoaded _value, $Res Function(FetchLoaded) _then)
      : super(_value, (v) => _then(v as FetchLoaded));

  @override
  FetchLoaded get _value => super._value as FetchLoaded;
}

class _$FetchLoaded implements FetchLoaded {
  const _$FetchLoaded();

  @override
  String toString() {
    return 'FetchStatus.loaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FetchLoaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result error(String message),
    @required Result loaded(),
  }) {
    assert(loading != null);
    assert(error != null);
    assert(loaded != null);
    return loaded();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result error(String message),
    Result loaded(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(FetchLoading value),
    @required Result error(FetchError value),
    @required Result loaded(FetchLoaded value),
  }) {
    assert(loading != null);
    assert(error != null);
    assert(loaded != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(FetchLoading value),
    Result error(FetchError value),
    Result loaded(FetchLoaded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class FetchLoaded implements FetchStatus {
  const factory FetchLoaded() = _$FetchLoaded;
}
