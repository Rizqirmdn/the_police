import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:polisi_crime_mapping/entity/fetch_status.dart';
import 'package:polisi_crime_mapping/entity/pengaduan.dart';
import 'package:polisi_crime_mapping/services/pengaduan_service.dart';

part 'list_pengaduan_active_state.dart';
part 'list_pengaduan_active_cubit.freezed.dart';

@lazySingleton
class ListPengaduanActiveCubit extends Cubit<ListPengaduanActiveState> {
  final PengaduanService _pengaduanService;

  ListPengaduanActiveCubit(this._pengaduanService)
      : super(ListPengaduanActiveState.initial());

  Future<void> fetch() async {
    try {
      emit(state.copyWith(status: FetchStatus.loading()));
      final data = await _pengaduanService.getActivePengaduan();
      emit(
        state.copyWith(status: FetchStatus.loaded(), data: data),
      );
    } catch (e) {
      emit(state.copyWith(status: FetchStatus.error(e.toString())));
    }
  }
}
