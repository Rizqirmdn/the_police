import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:polisi_crime_mapping/blocs/blocs.dart';
import 'package:polisi_crime_mapping/screens/pengaduan_detail_screen.dart';

class ListPengaduanActiveScreen extends StatefulWidget {
  const ListPengaduanActiveScreen({
    Key key,
  }) : super(key: key);

  @override
  _ListPengaduanActiveScreenState createState() =>
      _ListPengaduanActiveScreenState();
}

class _ListPengaduanActiveScreenState extends State<ListPengaduanActiveScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pengaduan Active"),
      ),
      body: BlocBuilder<ListPengaduanActiveCubit, ListPengaduanActiveState>(
        builder: (context, state) {
          return Center(
            child: state.status.when(
              loading: () => CircularProgressIndicator(),
              error: (message) => Text(message),
              loaded: () => ListView.builder(
                itemCount: state.data.length,
                itemBuilder: (context, index) {
                  final pengaduan = state.data[index];
                  return Card(
                    child: ListTile(
                      title: Text(pengaduan.keterangan),
                      subtitle: Text(pengaduan.jenisKejahatan.jenis),
                      trailing: Text(pengaduan.statusTerakhir),
                      isThreeLine: true,
                      onTap: () => Navigator.of(context).pushNamed(
                        PengaduanDetailScreen.routeName,
                        arguments: pengaduan.id,
                      ),
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  void initState() {
    context.bloc<ListPengaduanActiveCubit>().fetch();
    super.initState();
  }
}
