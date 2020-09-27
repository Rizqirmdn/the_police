import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class Pengaduan extends Equatable {
  final String id;
  final String keterangan;
  final int jumlahKorban;
  final User polisi;
  final User masyarakat;
  final JenisKejahatan jenisKejahatan;
  final String longitude;
  final String latitude;
  final String statusTerakhir;
  final DateTime tanggalDibuat;

  const Pengaduan({
    @required this.id,
    @required this.keterangan,
    @required this.jumlahKorban,
    @required this.polisi,
    @required this.masyarakat,
    @required this.jenisKejahatan,
    @required this.longitude,
    @required this.latitude,
    @required this.statusTerakhir,
    @required this.tanggalDibuat,
  });

  factory Pengaduan.fromJSON(Map<String, dynamic> json) {
    return Pengaduan(
      id: json['_id'],
      keterangan: json['keterangan'],
      jumlahKorban: json['jumlah_korban'],
      latitude: json['latitude'],
      longitude: json['longitude'],
      statusTerakhir: json['status_terakhir'],
      tanggalDibuat: DateTime.parse(json['tanggal_dibuat']),
      jenisKejahatan: JenisKejahatan.fromJSON(json['jenis_kejahatan']),
      masyarakat: User.fromJSON(json['masyarakat']),
      polisi: json["polisi"] == null ? null : User.fromJSON(json['polisi']),
    );
  }

  @override
  List<Object> get props => [
        id,
        keterangan,
        jumlahKorban,
        polisi,
        masyarakat,
        jenisKejahatan,
        longitude,
        latitude,
        tanggalDibuat,
      ];
}

class User extends Equatable {
  final String id;
  final String nama;
  final String noTelp;

  const User({
    @required this.id,
    @required this.nama,
    @required this.noTelp,
  });

  factory User.fromJSON(Map<String, dynamic> json) {
    return User(
      id: json["_id"],
      nama: json["nama"],
      noTelp: json["no_telp"],
    );
  }

  @override
  List<Object> get props => [id, nama, noTelp];
}

class JenisKejahatan extends Equatable {
  final String id;
  final String jenis;
  final int tingkat;

  const JenisKejahatan({
    @required this.id,
    @required this.jenis,
    @required this.tingkat,
  });

  factory JenisKejahatan.fromJSON(Map<String, dynamic> json) {
    return JenisKejahatan(
      id: json["_id"],
      jenis: json["jenis"],
      tingkat: json["tingkat"],
    );
  }

  @override
  List<Object> get props => [id, jenis, tingkat];
}
