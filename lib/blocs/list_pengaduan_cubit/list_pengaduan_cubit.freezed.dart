// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'list_pengaduan_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ListPengaduanStateTearOff {
  const _$ListPengaduanStateTearOff();

// ignore: unused_element
  _ListPengaduanState call({List<Pengaduan> data, FetchStatus status}) {
    return _ListPengaduanState(
      data: data,
      status: status,
    );
  }
}

// ignore: unused_element
const $ListPengaduanState = _$ListPengaduanStateTearOff();

mixin _$ListPengaduanState {
  List<Pengaduan> get data;
  FetchStatus get status;

  $ListPengaduanStateCopyWith<ListPengaduanState> get copyWith;
}

abstract class $ListPengaduanStateCopyWith<$Res> {
  factory $ListPengaduanStateCopyWith(
          ListPengaduanState value, $Res Function(ListPengaduanState) then) =
      _$ListPengaduanStateCopyWithImpl<$Res>;
  $Res call({List<Pengaduan> data, FetchStatus status});

  $FetchStatusCopyWith<$Res> get status;
}

class _$ListPengaduanStateCopyWithImpl<$Res>
    implements $ListPengaduanStateCopyWith<$Res> {
  _$ListPengaduanStateCopyWithImpl(this._value, this._then);

  final ListPengaduanState _value;
  // ignore: unused_field
  final $Res Function(ListPengaduanState) _then;

  @override
  $Res call({
    Object data = freezed,
    Object status = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed ? _value.data : data as List<Pengaduan>,
      status: status == freezed ? _value.status : status as FetchStatus,
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

abstract class _$ListPengaduanStateCopyWith<$Res>
    implements $ListPengaduanStateCopyWith<$Res> {
  factory _$ListPengaduanStateCopyWith(
          _ListPengaduanState value, $Res Function(_ListPengaduanState) then) =
      __$ListPengaduanStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Pengaduan> data, FetchStatus status});

  @override
  $FetchStatusCopyWith<$Res> get status;
}

class __$ListPengaduanStateCopyWithImpl<$Res>
    extends _$ListPengaduanStateCopyWithImpl<$Res>
    implements _$ListPengaduanStateCopyWith<$Res> {
  __$ListPengaduanStateCopyWithImpl(
      _ListPengaduanState _value, $Res Function(_ListPengaduanState) _then)
      : super(_value, (v) => _then(v as _ListPengaduanState));

  @override
  _ListPengaduanState get _value => super._value as _ListPengaduanState;

  @override
  $Res call({
    Object data = freezed,
    Object status = freezed,
  }) {
    return _then(_ListPengaduanState(
      data: data == freezed ? _value.data : data as List<Pengaduan>,
      status: status == freezed ? _value.status : status as FetchStatus,
    ));
  }
}

class _$_ListPengaduanState implements _ListPengaduanState {
  const _$_ListPengaduanState({this.data, this.status});

  @override
  final List<Pengaduan> data;
  @override
  final FetchStatus status;

  @override
  String toString() {
    return 'ListPengaduanState(data: $data, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ListPengaduanState &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(status);

  @override
  _$ListPengaduanStateCopyWith<_ListPengaduanState> get copyWith =>
      __$ListPengaduanStateCopyWithImpl<_ListPengaduanState>(this, _$identity);
}

abstract class _ListPengaduanState implements ListPengaduanState {
  const factory _ListPengaduanState(
      {List<Pengaduan> data, FetchStatus status}) = _$_ListPengaduanState;

  @override
  List<Pengaduan> get data;
  @override
  FetchStatus get status;
  @override
  _$ListPengaduanStateCopyWith<_ListPengaduanState> get copyWith;
}
