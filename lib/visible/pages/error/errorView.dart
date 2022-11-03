import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:revotion/data/const/hive_box.dart';
import 'package:revotion/data/errors/error_log.dart';
import 'package:revotion/visible/widgets/errors/header.dart';

class ErrorView extends StatefulWidget {
  const ErrorView({super.key});

  @override
  State<ErrorView> createState() => _ErrorViewState();
}

class _ErrorViewState extends State<ErrorView> {
  List<ErrorLog> errorList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme:const IconThemeData(
          color: Colors.black
        ),
        elevation: 0,
        title: const Text("Error Logs",style: TextStyle(color: Colors.black),),
      ),
      body: ValueListenableBuilder<Box>(
        valueListenable: Hive.box(HiveBox.errorLog).listenable(),
        builder: (context, box, _) {
          errorList = box.values.toList().cast<ErrorLog>();
          return Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Column(
              children: [
                 const ErrorHeader(),
                 Expanded(
                  flex: 15,
                  child:SingleChildScrollView(
                    child: SizedBox(
                    child: Column(
                  children: [
                    Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: errorList.length,
                            itemBuilder: (context, index) {
                            return Row(
                            children: [
                             Expanded(
                              child: SizedBox(
                                height: 50,
                                child: Text(errorList[index].cat.toString(),style: const TextStyle(fontSize: 20),),
          
                              ),
                             ),
                              Expanded(
                              child: SizedBox(
                                 height: 50,
                                child:Text(errorList[index].dec.toString(),style: const TextStyle(fontSize: 20),),
                              ),
                             ),
                              Expanded(
                              child: SizedBox(
                                 height: 50,
                                child: Text(errorList[index].reason.toString(),style: const TextStyle(fontSize: 20),),
                              ),
                              ),
                            ],
                            );
                              },
                          ),
                    ),
                  ],
                ),
                    )  ,
                  )
                ),
               
              ],
            ),
          );
        },
      ),
    );
  }
}