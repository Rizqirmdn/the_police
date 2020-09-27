// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'pengaduan_detail_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$PengaduanDetailStateTearOff {
  const _$PengaduanDetailStateTearOff();

// ignore: unused_element
  _PengaduanDetaiLState call(
      {@required FetchStatus status, @nullable PengaduanDetail data}) {
    return _PengaduanDetaiLState(
      status: status,
      data: data,
    );
  }
}

// ignore: unused_element
const $PengaduanDetailState = _$PengaduanDetailStateTearOff();

mixin _$PengaduanDetailState {
  FetchStatus get status;
  @nullable
  PengaduanDetail get data;

  $PengaduanDetailStateCopyWith<PengaduanDetailState> get copyWith;
}

abstract class $PengaduanDetailStateCopyWith<$Res> {
  factory $PengaduanDetailStateCopyWith(PengaduanDetailState value,
          $Res Function(PengaduanDetailState) then) =
      _$PengaduanDetailStateCopyWithImpl<$Res>;
  $Res call({FetchStatus status, @nullable PengaduanDetail data});

  $FetchStatusCopyWith<$Res> get status;
}

class _$PengaduanDetailStateCopyWithImpl<$Res>
    implements $PengaduanDetailStateCopyWith<$Res> {
  _$PengaduanDetailStateCopyWithImpl(this._value, this._then);

  final PengaduanDetailState _value;
  // ignore: unused_field
  final $Res Function(PengaduanDetailState) _then;

  @override
  $Res call({
    Object status = freezed,
    Object data = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed ? _value.status : status as FetchStatus,
      data: data == freezed ? _value.data : data as PengaduanDetail,
    ));
  }

  @override
  $FetchStatusCopyWith<$Res> get status {
    if (_value.status == null) {
      return null;
    }
    return $FetchStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value));
    });
  }
}

abstract class _$PengaduanDetaiLStateCopyWith<$Res>
    implements $PengaduanDetailStateCopyWith<$Res> {
  factory _$PengaduanDetaiLStateCopyWith(_PengaduanDetaiLState value,
          $Res Function(_PengaduanDetaiLState) then) =
      __$PengaduanDetaiLStateCopyWithImpl<$Res>;
  @override
  $Res call({FetchStatus status, @nullable PengaduanDetail data});

  @override
  $FetchStatusCopyWith<$Res> get status;
}

class __$PengaduanDetaiLStateCopyWithImpl<$Res>
    extends _$PengaduanDetailStateCopyWithImpl<$Res>
    implements _$PengaduanDetaiLStateCopyWith<$Res> {
  __$PengaduanDetaiLStateCopyWithImpl(
      _PengaduanDetaiLState _value, $Res Function(_PengaduanDetaiLState) _then)
      : super(_value, (v) => _then(v as _PengaduanDetaiLState));

  @override
  _PengaduanDetaiLState get _value => super._value as _PengaduanDetaiLState;

  @override
  $Res call({
    Object status = freezed,
    Object data = freezed,
  }) {
    return _then(_PengaduanDetaiLState(
      status: status == freezed ? _value.status : status as FetchStatus,
      data: data == freezed ? _value.data : data as PengaduanDetail,
    ));
  }
}

class _$_PengaduanDetaiLState implements _PengaduanDetaiLState {
  const _$_PengaduanDetaiLState({@required this.status, @nullable this.data})
      : assert(status != null);

  @override
  final FetchStatus status;
  @override
  @nullable
  final PengaduanDetail data;

  @override
  String toString() {
    return 'PengaduanDetailState(status: $status, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PengaduanDetaiLState &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(data);

  @override
  _$PengaduanDetaiLStateCopyWith<_PengaduanDetaiLState> get copyWith =>
      __$PengaduanDetaiLStateCopyWithImpl<_PengaduanDetaiLState>(
          this, _$identity);
}

abstract class _PengaduanDetaiLState implements PengaduanDetailState {
  const factory _PengaduanDetaiLState(
      {@required FetchStatus status,
      @nullable PengaduanDetail data}) = _$_PengaduanDetaiLState;

  @override
  FetchStatus get status;
  @override
  @nullable
  PengaduanDetail get data;
  @override
  _$PengaduanDetaiLStateCopyWith<_PengaduanDetaiLState> get copyWith;
}
