part of 'list_pengaduan_active_cubit.dart';

@freezed
abstract class ListPengaduanActiveState with _$ListPengaduanActiveState {
  const factory ListPengaduanActiveState({
    @required FetchStatus status,
    @required List<Pengaduan> data,
  }) = _ListPengaduanActiveState;

  factory ListPengaduanActiveState.initial() => ListPengaduanActiveState(
        status: FetchStatus.loading(),
        data: [],
      );
}
