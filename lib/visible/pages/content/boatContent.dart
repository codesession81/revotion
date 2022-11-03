import 'dart:async';

import 'package:flutter/material.dart';
import 'package:revotion/data/brain/brain.dart';
import 'package:revotion/data/errors/error_log.dart';
import 'package:revotion/data/local/hive.dart';
import 'package:revotion/visible/widgets/functions/batterie.dart';
import 'package:revotion/visible/widgets/functions/categorie.dart';
import 'package:revotion/visible/widgets/functions/errors.dart';
import 'package:revotion/visible/widgets/functions/fuellstaende.dart';
import 'package:revotion/visible/widgets/functions/licht.dart';
import 'package:revotion/visible/widgets/functions/map.dart';
import 'package:revotion/visible/widgets/functions/musik.dart';
import 'package:revotion/visible/widgets/functions/sensor.dart';

class BoatContent extends StatefulWidget {
  const BoatContent({super.key});

  @override
  State<BoatContent> createState() => _BoatContentState();
}

class _BoatContentState extends State<BoatContent> {
   Timer? timer; 
   ErrorLog? errorLog;
   List<ErrorLog>? errorList = [];

 @override
  void initState() {
    super.initState();
    timer = Timer.periodic(const Duration(seconds: 4), (timer) { 
    var item =Brain.getError(); 
    if(item!=null){
     setState(() {
      errorLog = item;
      errorList?.add(errorLog!);
     });
    }
    LocalHive.loadingErrorInLocalDb(errorList: errorList);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 50,right: 50,bottom: 50,top: 70),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children:const [
              Positioned(
                left: 25,
                child: Sensor(height: 500,witdh: 200,color: Colors.white),
              ),
              Positioned(
                left: 25,
                top: 550,
                child: Errors(height: 200,witdh: 200,color: Colors.white),
              ),
              Positioned(
                left: 275,
                child: Categorie(height: 200,witdh: 450,color: Colors.white),
              ),
              Positioned(
                left: 275,
                top: 250,
                child: Musik(height: 500,witdh: 200,color: Colors.white),
              ),
              Positioned(
                top: 0,
                left: 775,
                child: Batterie(height: 200,witdh: 200,color: Colors.white),
              ),
              Positioned(
                left: 525,
                top: 250,
                child: Licht(height: 200,witdh: 450,color: Colors.white),
              ),
               Positioned(
                top: 0,
                left: 1025,
                child: Fuellstaende(height: 450,witdh: 200,color: Colors.white),
              ),
               Positioned(
                left: 525,
                top: 500,
                child: Map(height: 250,witdh: 700,color: Colors.white),
              ),
            ],
          ),
        ),
      );
  }
}