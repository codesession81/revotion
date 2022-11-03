import 'package:hive_flutter/hive_flutter.dart';

part 'error_log.g.dart';

@HiveType(typeId: 0)
class ErrorLog {
  @HiveField(0)
  final String? cat;
  @HiveField(1)
  final String? dec;
  @HiveField(2)
  final String? reason;
  ErrorLog({required this.cat,required this.dec,required this.reason});

  static List<ErrorLog> errBackEnd = [
    ErrorLog(cat: "Backend",dec: "4353", reason: "Communication timeouts"),
    ErrorLog(cat: "Backend",dec: "4354", reason: "File error"),
    ErrorLog(cat: "Backend",dec: "4355", reason: "GNSS error"),
    ErrorLog(cat: "Backend",dec: "4352", reason: "IP error"),
    ErrorLog(cat: "Backend",dec: "4357", reason: "HTTP error"),
  ];

   static List<ErrorLog> errBLE = [
    ErrorLog(cat: "BLE",dec: "4609", reason: "Error setting advertisement data"),
    ErrorLog(cat: "BLE",dec: "4610", reason: "Error enabling advertisement"),
    ErrorLog(cat: "BLE",dec: "4611", reason: "Error initialising security"),
    ErrorLog(cat: "BLE",dec: "4612", reason: "Device disconnect error"),
    ErrorLog(cat: "BLE",dec: "4613", reason: "More than 3 devices"),
  ];

   static List<ErrorLog> errUser = [
    ErrorLog(cat:"User",dec: "4097", reason: "Memory error, power cycle req"),
    ErrorLog(cat:"User",dec: "4098", reason: "Technical error, power cycle req"),
    ErrorLog(cat:"User",dec: "4099", reason: "No network connection"),
    ErrorLog(cat:"User",dec: "4100", reason: "No GPS connection"),
    ErrorLog(cat:"User",dec: "4101", reason: "Node not available"),
    ErrorLog(cat:"User",dec: "8193", reason: "Efuse error"),
    ErrorLog(cat:"User",dec: "12289", reason: "Sensor not connected"),
    ErrorLog(cat:"User",dec: "12290", reason: "Lower limit temperature warning"),
    ErrorLog(cat:"User",dec: "12291", reason: "Upper limit temperature warning"),
    ErrorLog(cat:"User",dec: "20481", reason: "Temperature sensor not connected"),
    ErrorLog(cat:"User",dec: "20482", reason: "Lower limit SOC warning (<20%)"),
    ErrorLog(cat:"User",dec: "20483", reason: "Lower limit SOC error (<10%)"),
    ErrorLog(cat:"User",dec: "20484", reason: "Battery temperature warning (>60°C)"),
    ErrorLog(cat:"User",dec: "20485", reason: "Battery temperature error (>90°C)"),
    ErrorLog(cat:"User",dec: "20486", reason: "Fuse warning -> Min. one fuse not connected"),
    ErrorLog(cat:"User",dec: "24577", reason: "Sensor not connected"),
    ErrorLog(cat:"User",dec: "24578", reason: "Lower limit level warning"),
    ErrorLog(cat:"User",dec: "24579", reason: "Upper limit level warning"),
  ];
}