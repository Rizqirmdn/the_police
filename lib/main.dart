import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:polisi_crime_mapping/app.dart';
import 'package:polisi_crime_mapping/injection.dart';

void main() async {
  await setUp();
  runApp(App());
}

Future<void> setUp() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection();
  await Future.wait([
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]),
  ]);
}
