// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'list_pengaduan_active_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ListPengaduanActiveStateTearOff {
  const _$ListPengaduanActiveStateTearOff();

// ignore: unused_element
  _ListPengaduanActiveState call(
      {@required FetchStatus status, @required List<Pengaduan> data}) {
    return _ListPengaduanActiveState(
      status: status,
      data: data,
    );
  }
}

// ignore: unused_element
const $ListPengaduanActiveState = _$ListPengaduanActiveStateTearOff();

mixin _$ListPengaduanActiveState {
  FetchStatus get status;
  List<Pengaduan> get data;

  $ListPengaduanActiveStateCopyWith<ListPengaduanActiveState> get copyWith;
}

abstract class $ListPengaduanActiveStateCopyWith<$Res> {
  factory $ListPengaduanActiveStateCopyWith(ListPengaduanActiveState value,
          $Res Function(ListPengaduanActiveState) then) =
      _$ListPengaduanActiveStateCopyWithImpl<$Res>;
  $Res call({FetchStatus status, List<Pengaduan> data});

  $FetchStatusCopyWith<$Res> get status;
}

class _$ListPengaduanActiveStateCopyWithImpl<$Res>
    implements $ListPengaduanActiveStateCopyWith<$Res> {
  _$ListPengaduanActiveStateCopyWithImpl(this._value, this._then);

  final ListPengaduanActiveState _value;
  // ignore: unused_field
  final $Res Function(ListPengaduanActiveState) _then;

  @override
  $Res call({
    Object status = freezed,
    Object data = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed ? _value.status : status as FetchStatus,
      data: data == freezed ? _value.data : data as List<Pengaduan>,
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

abstract class _$ListPengaduanActiveStateCopyWith<$Res>
    implements $ListPengaduanActiveStateCopyWith<$Res> {
  factory _$ListPengaduanActiveStateCopyWith(_ListPengaduanActiveState value,
          $Res Function(_ListPengaduanActiveState) then) =
      __$ListPengaduanActiveStateCopyWithImpl<$Res>;
  @override
  $Res call({FetchStatus status, List<Pengaduan> data});

  @override
  $FetchStatusCopyWith<$Res> get status;
}

class __$ListPengaduanActiveStateCopyWithImpl<$Res>
    extends _$ListPengaduanActiveStateCopyWithImpl<$Res>
    implements _$ListPengaduanActiveStateCopyWith<$Res> {
  __$ListPengaduanActiveStateCopyWithImpl(_ListPengaduanActiveState _value,
      $Res Function(_ListPengaduanActiveState) _then)
      : super(_value, (v) => _then(v as _ListPengaduanActiveState));

  @override
  _ListPengaduanActiveState get _value =>
      super._value as _ListPengaduanActiveState;

  @override
  $Res call({
    Object status = freezed,
    Object data = freezed,
  }) {
    return _then(_ListPengaduanActiveState(
      status: status == freezed ? _value.status : status as FetchStatus,
      data: data == freezed ? _value.data : data as List<Pengaduan>,
    ));
  }
}

class _$_ListPengaduanActiveState implements _ListPengaduanActiveState {
  const _$_ListPengaduanActiveState(
      {@required this.status, @required this.data})
      : assert(status != null),
        assert(data != null);

  @override
  final FetchStatus status;
  @override
  final List<Pengaduan> data;

  @override
  String toString() {
    return 'ListPengaduanActiveState(status: $status, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ListPengaduanActiveState &&
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
  _$ListPengaduanActiveStateCopyWith<_ListPengaduanActiveState> get copyWith =>
      __$ListPengaduanActiveStateCopyWithImpl<_ListPengaduanActiveState>(
          this, _$identity);
}

abstract class _ListPengaduanActiveState implements ListPengaduanActiveState {
  const factory _ListPengaduanActiveState(
      {@required FetchStatus status,
      @required List<Pengaduan> data}) = _$_ListPengaduanActiveState;

  @override
  FetchStatus get status;
  @override
  List<Pengaduan> get data;
  @override
  _$ListPengaduanActiveStateCopyWith<_ListPengaduanActiveState> get copyWith;
}
