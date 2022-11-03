import 'package:flutter/material.dart';

class ErrorHeader extends StatelessWidget {
  const ErrorHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
           flex: 1,
           child:SizedBox(
             width: MediaQuery.of(context).size.width,
             child: Row(
           children:const [
              Expanded(
                     child: Text("Categorie",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    ),
              Expanded(
                     child: Text("Dec Code",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    ),
               Expanded(
                     child: Text("Reason",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                     ),
           ],
         ),
           )  
         );
  }
}