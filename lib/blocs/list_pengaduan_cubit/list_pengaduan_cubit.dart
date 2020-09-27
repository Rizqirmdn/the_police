import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:polisi_crime_mapping/entity/fetch_status.dart';
import 'package:polisi_crime_mapping/entity/pengaduan.dart';
import 'package:polisi_crime_mapping/services/pengaduan_service.dart';

part 'list_pengaduan_state.dart';
part 'list_pengaduan_cubit.freezed.dart';

@lazySingleton
class ListPengaduanCubit extends Cubit<ListPengaduanState> {
  final PengaduanService _pengaduanService;

  ListPengaduanCubit(this._pengaduanService)
      : super(ListPengaduanState.initial());

  Future<void> fetch() async {
    try {
      emit(state.copyWith(status: FetchStatus.loading()));
      final data = await _pengaduanService.getAvailablePengaduan();
      emit(ListPengaduanState(data: data, status: FetchStatus.loaded()));
    } catch (e, stackTrace) {
      print(stackTrace);
      emit(state.copyWith(status: FetchStatus.error(e.toString())));
    }
  }
}
