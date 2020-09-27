part of 'pengaduan_detail_cubit.dart';

@freezed
abstract class PengaduanDetailState with _$PengaduanDetailState {
  const factory PengaduanDetailState({
    @required FetchStatus status,
    @nullable PengaduanDetail data,
  }) = _PengaduanDetaiLState;

  factory PengaduanDetailState.initial() => PengaduanDetailState(
        data: null,
        status: FetchStatus.loading(),
      );
}
