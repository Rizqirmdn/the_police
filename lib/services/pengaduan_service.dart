import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:polisi_crime_mapping/entity/pengaduan.dart';
import 'package:polisi_crime_mapping/entity/pengaduan_detail.dart';
import 'package:polisi_crime_mapping/utils/api.dart';

@lazySingleton
class PengaduanService {
  final Api _api;

  const PengaduanService(this._api);

  Future<List<Pengaduan>> getAvailablePengaduan() async {
    try {
      final res = await _api.dio.get("/polisi/pengaduan");
      final data = res.data;
      final listPengaduan =
          (data as List).map((json) => Pengaduan.fromJSON(json)).toList();
      return listPengaduan;
    } on DioError catch (e) {
      print(e.response.data);
      throw e;
    }
  }

  Future<List<Pengaduan>> getActivePengaduan() async {
    try {
      final res = await _api.dio.get("/polisi/pengaduan/active");
      final data = res.data;
      final listPengaduan =
          (data as List).map((json) => Pengaduan.fromJSON(json)).toList();
      return listPengaduan;
    } on DioError catch (e) {
      throw e;
    }
  }

  Future<PengaduanDetail> getPengaduanDetail(String pengaduanId) async {
    try {
      final res = await _api.dio.get('/pengaduan/$pengaduanId');
      return PengaduanDetail.fromJSON(res.data);
    } on DioError catch (e) {
      throw e;
    }
  }
}
