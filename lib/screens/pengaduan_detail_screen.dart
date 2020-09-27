import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:polisi_crime_mapping/blocs/blocs.dart';
import 'package:polisi_crime_mapping/entity/pengaduan_detail.dart';
import 'package:polisi_crime_mapping/screens/update_pengaduan_screen.dart';
import 'package:polisi_crime_mapping/utils/map_utils.dart';

class PengaduanDetailScreen extends StatefulWidget {
  static const routeName = '/pengaduan/detail';

  final String pengaduanId;

  const PengaduanDetailScreen({
    Key key,
    @required this.pengaduanId,
  }) : super(key: key);

  @override
  _PengaduanDetailScreenState createState() => _PengaduanDetailScreenState();
}

class _PengaduanDetailScreenState extends State<PengaduanDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pengaduan Detail"),
        actions: <Widget>[
          FlatButton(
            child: Text(
              "Update",
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {
              ///
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => UpdatePengaduanDetailScreen()));
            },
          )
        ],
      ),
      body: Center(
        child: BlocBuilder<PengaduanDetailCubit, PengaduanDetailState>(
          builder: (context, state) {
            return state.status.when(
              loading: () => CircularProgressIndicator(),
              error: (message) => Text(message),
              loaded: () {
                return Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 10,
                  ),
                  child: ListView(
                    children: <Widget>[
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Pengaduan: ${state.data.keterangan}',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      RaisedButton(
                        child: Text("Buka Lokasi di Google Maps"),
                        onPressed: () {
                          MapUtils.openMap(
                            '-6.2098913',
                            '106.848026',
                          );
                        },
                      ),
                      SizedBox(height: 30),
                      ...state.data.riwayat
                          .map(
                            (riwayat) => _RiwayatTimeline(riwayat: riwayat),
                          )
                          .toList(),
                    ],
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }

  @override
  void initState() {
    context.bloc<PengaduanDetailCubit>().fetch(widget.pengaduanId);
    super.initState();
  }
}

class _RiwayatTimeline extends StatelessWidget {
  final Riwayat riwayat;

  const _RiwayatTimeline({
    Key key,
    @required this.riwayat,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          left: BorderSide(width: 3, color: Colors.deepOrange),
        ),
      ),
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 10,
      ),
      margin: EdgeInsets.zero,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
              color: Colors.deepOrangeAccent,
              borderRadius: BorderRadius.all(Radius.circular(100)),
            ),
          ),
          SizedBox(width: 10),
          Text(riwayat.formatTangalDibuat),
          SizedBox(width: 70),
          Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(riwayat.status),
              SizedBox(height: 10),
              if (riwayat.keterangan.isNotEmpty)
                SizedBox(
                    width: MediaQuery.of(context).size.width - 2 * 20 - 180,
                    child: Text(
                      riwayat.keterangan,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    )),
              if (riwayat.foto.isNotEmpty)
                Image.network(
                  riwayat.foto,
                  width: 100,
                  fit: BoxFit.fitWidth,
                ),
            ],
          ),
        ],
      ),
    );
  }
}
