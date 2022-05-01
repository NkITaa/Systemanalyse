import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'App.dart';

void main() async {
  initialize();
  runApp(MyApp());
}

void initialize() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox("settings");
  await Hive.openBox("utitle");
  await Hive.openBox("vimage");
  await Hive.openBox("mimage");
  await Hive.openBox("mtitle");
  await Hive.openBox("mdtitle");
  await Hive.openBox("ps");
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
}
