import 'package:hive_flutter/hive_flutter.dart';
import 'package:revotion/data/const/hive_box.dart';
import 'package:revotion/data/errors/error_log.dart';

class LocalHive{
  static Future loadingErrorInLocalDb({List<ErrorLog>? errorList})async{
    await Hive.box(HiveBox.errorLog).clear();
    await Hive.box(HiveBox.errorLog).addAll(errorList!);
  }
}