import 'dart:io';

import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class UpdatePengaduanDetailScreen extends StatefulWidget {
  @override
  _UpdatePengaduanDetailScreenState createState() =>
      _UpdatePengaduanDetailScreenState();
}

class _UpdatePengaduanDetailScreenState
    extends State<UpdatePengaduanDetailScreen> {
  final keteranganController = TextEditingController();
  final jumlahKorbanController = TextEditingController();
  final List<String> status = [
    'LAPORAN VALID',
    'LAPORAN TIDAK VALID',
  ];
  String currentStatus;

  File _image;
  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    setState(() {
      _image = File(pickedFile.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    print(_image);
    return Scaffold(
      appBar: AppBar(
        title: Text('Update Pengaduan'),
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //keterangan
            TextFormField(
              controller: keteranganController,
              decoration: InputDecoration(
                hintText: 'Keterangan',
                suffixIcon: Icon(Icons.access_alarm),
              ),
            ),
            SizedBox(height: 20),
            //status
            DropdownButtonFormField(
              hint: Text('Ubah Satatus'),
              value: currentStatus,
              items: status
                  .map((e) => DropdownMenuItem(
                        child: Text(e),
                        value: e,
                      ))
                  .toList(),
              onChanged: (newValue) {
                setState(() {
                  currentStatus = newValue;
                });
              },
            ),
            //jumlah korban
            SizedBox(height: 20),
            TextFormField(
              controller: jumlahKorbanController,
              decoration: InputDecoration(
                hintText: 'Jumlah Korban',
                suffixIcon: Icon(Icons.access_alarm),
              ),
            ),
            SizedBox(height: 20),
            //foto
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
              child: Center(
                child: Icon(Icons.camera_alt),
              ),
            ),
            SizedBox(height: 10),
            RaisedButton(
              onPressed: () {},
              child: Text('Ambil Gambar'),
            ),
            //button
            SizedBox(height: 40),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                color: Colors.brown,
                onPressed: () {
                  //
                  // Navigator.pop(context);
                  // Flushbar(
                  //   backgroundColor: Colors.green,
                  //   duration: Duration(seconds: 2),
                  //   title: 'Berhasil Menyimpan Perubahan',
                  // )..show(context);
                },
                child: Text(
                  'SIMPAN',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
