import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:polisi_crime_mapping/blocs/blocs.dart';
import 'package:polisi_crime_mapping/entity/pengaduan.dart';

class ListPengaduanScreen extends StatefulWidget {
  const ListPengaduanScreen({
    Key key,
  }) : super(key: key);

  @override
  _ListPengaduanScreenState createState() => _ListPengaduanScreenState();
}

class _ListPengaduanScreenState extends State<ListPengaduanScreen> {
  @override
  void initState() {
    context.bloc<ListPengaduanCubit>().fetch();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Pengaduan"),
      ),
      body: BlocBuilder<ListPengaduanCubit, ListPengaduanState>(
        builder: (context, state) {
          return Center(
            child: state.status.map(
              loading: (status) => CircularProgressIndicator(),
              error: (status) => Text(status.message),
              loaded: (status) => RefreshIndicator(
                onRefresh: () async {
                  await Future.delayed(Duration(seconds: 2));
                  context.bloc<ListPengaduanCubit>().fetch();
                },
                child: ListView.builder(
                  itemCount: state.data.length,
                  itemBuilder: (context, index) {
                    return _Item(pengaduan: state.data[index]);
                  },
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class _Item extends StatelessWidget {
  final Pengaduan pengaduan;

  const _Item({
    Key key,
    @required this.pengaduan,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isAmbil = false;

    return Container(
      height: 80,
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.brown, width: 1),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Keterangan: ${pengaduan.keterangan}"),
              Text("Pelapor: ${pengaduan.masyarakat.nama}"),
              Text("Jenis kejahatan: ${pengaduan.jenisKejahatan.jenis}"),
              Text("Tanggal di buat: ${formatDate(pengaduan.tanggalDibuat)}"),
            ],
          ),
          FlatButton(
            textColor: Colors.white,
            color: (isAmbil) ? Colors.brown : Colors.grey,
            child: Text("AMBIL"),
            onPressed: (isAmbil) ? () {} : null,
          ),
        ],
      ),
    );
  }

  String formatDate(DateTime date) {
    return DateFormat('dd/MMMM/yyyy, hh:MM').format(date);
  }
}
