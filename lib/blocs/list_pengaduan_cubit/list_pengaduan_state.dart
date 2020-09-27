part of 'list_pengaduan_cubit.dart';

@freezed
abstract class ListPengaduanState with _$ListPengaduanState {
  const factory ListPengaduanState({
    List<Pengaduan> data,
    FetchStatus status,
  }) = _ListPengaduanState;

  factory ListPengaduanState.initial() => ListPengaduanState(
        data: [],
        status: FetchStatus.loading(),
      );
}
