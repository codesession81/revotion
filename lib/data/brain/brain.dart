import 'dart:math';

import 'package:revotion/data/errors/error_log.dart';

class Brain{
static Random random = Random();
 
 static getError(){
  if(createRandomNumber()==1){
    var item =(ErrorLog.errUser..shuffle()).first;
    return item;
  }else if(createRandomNumber()==2){
    var item =(ErrorLog.errBackEnd..shuffle()).first;
    return item;
  }else if(createRandomNumber()==3){
    var item =(ErrorLog.errBLE..shuffle()).first;
    return item;
  }
 }

 static int createRandomNumber(){
  int randomNumber = random.nextInt(4)+1;
  return randomNumber;
 }
}