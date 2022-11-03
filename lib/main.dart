import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:revotion/data/const/hive_box.dart';
import 'package:revotion/data/errors/error_log.dart';
import 'package:revotion/visible/home.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  final localDbDirectory = await path_provider.getApplicationDocumentsDirectory();
  await Hive.initFlutter(localDbDirectory.path);
  Hive.registerAdapter(ErrorLogAdapter());
  await Hive.openBox(HiveBox.errorLog);
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Revotion',
      home: Home(),
    );
  }
}

