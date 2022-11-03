import "package:flutter/material.dart";
import "package:hive_flutter/hive_flutter.dart";
import "package:revotion/data/const/hive_box.dart";
import 'package:revotion/data/errors/error_log.dart';
import 'package:revotion/visible/pages/error/errorView.dart';

class Errors extends StatefulWidget {
  final double height;
  final double witdh;
  final Color color;
  const Errors({required this.color,required this.height,required this.witdh});

  @override
  State<Errors> createState() => _ErrorsState();
}

class _ErrorsState extends State<Errors> {
   List<ErrorLog> errorList = [];

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Box>(
      valueListenable: Hive.box(HiveBox.errorLog).listenable(),
       builder:(context, box, _) {
        errorList = box.values.toList().cast<ErrorLog>();
         return Container(
            width: widget.witdh,
            height: widget.height,
            decoration: BoxDecoration(
              color:widget.color,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  blurRadius: 4,
                  offset: const Offset(4, 8), // Shadow position
                ),
              ],
            ),
            child: Column(
              children: [
                Expanded(
                  flex: 3,
                  child: Row(
                    children: const[
                     Text("Fehler",style: TextStyle(color: Colors.grey),)
                    ],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child:Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:const [
                      Icon(Icons.error_outline,color: Colors.red,size: 40,)
                      ],
                    )
                ),
                Expanded(
                  flex: 3,
                  child:Column(
                    children: [
                      TextButton(
                        child: const Text("ErrorLogs anzeigen"),
                        onPressed: () =>  Navigator.push(context, MaterialPageRoute(builder: (context)=>const ErrorView())),
                      ),
                    ],
                  )
                )
              ],
            ),
          );
       },
       );
  }
}