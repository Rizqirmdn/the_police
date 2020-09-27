import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:polisi_crime_mapping/entity/fetch_status.dart';
import 'package:polisi_crime_mapping/entity/pengaduan_detail.dart';
import 'package:polisi_crime_mapping/services/pengaduan_service.dart';

part 'pengaduan_detail_state.dart';
part 'pengaduan_detail_cubit.freezed.dart';

@lazySingleton
class PengaduanDetailCubit extends Cubit<PengaduanDetailState> {
  final PengaduanService _pengaduanService;

  PengaduanDetailCubit(this._pengaduanService)
      : super(PengaduanDetailState.initial());

  Future<void> fetch(String pengaduanId) async {
    try {
      emit(state.copyWith(status: FetchStatus.loading()));
      final data = await _pengaduanService.getPengaduanDetail(pengaduanId);
      emit(state.copyWith(status: FetchStatus.loaded(), data: data));
    } on DioError catch (e) {
      emit(state.copyWith(status: FetchStatus.error(e.toString())));
    }
  }
}
