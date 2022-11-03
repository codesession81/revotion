import "package:flutter/material.dart";

class Licht extends StatefulWidget {
  final double height;
  final double witdh;
  final Color color;
  const Licht({required this.color,required this.height,required this.witdh});

  @override
  State<Licht> createState() => _LichtState();
}

class _LichtState extends State<Licht> {
  @override
  Widget build(BuildContext context) {
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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
         Row(
          children: const[
            Text("LICHT",style: TextStyle(color: Colors.grey),)
          ],
         ),
         Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
           Column(
            children: const [
                      SizedBox(
                        height: 50,
                        width: 50,
                        child:Image(
                          image: AssetImage("assets/bright-lightbulb.png"),
                        ),
                      ),
               Text("Innenlicht",style: TextStyle(color: Colors.grey))
            ],
           ),
           Column(
            children: const [
               SizedBox(
                 height: 50,
                 width: 50,
                 child:Image(
                   image: AssetImage("assets/car-light.png"),
                 ),
               ),
               Text("Außenlicht",style: TextStyle(color: Colors.grey))
            ],
           ),
           Column(
            children: const [
               SizedBox(
                   height: 50,
                   width: 50,
                   child:Image(
                     image: AssetImage("assets/lamp.png"),
                   ),
                 ),
               Text("Küche",style: TextStyle(color: Colors.grey))
            ],
           ),
           Column(
            children: const [
               SizedBox(
                 height: 50,
                 width: 50,
                 child:Image(
                   image: AssetImage("assets/loading.png"),
                 ),
               ),
               Text("Ambiente",style: TextStyle(color: Colors.grey))
            ],
           )
          ],
         ),
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Switch(
            activeColor: Colors.white,
            activeTrackColor: Colors.cyan,
            inactiveThumbColor: Colors.blueGrey.shade600,
            inactiveTrackColor: Colors.grey.shade400,
            splashRadius: 50.0,
            value: true,
            onChanged: (value){
            },
          ),
           Switch(
            activeColor: Colors.white,
            activeTrackColor: Colors.cyan,
            inactiveThumbColor: Colors.blueGrey.shade600,
            inactiveTrackColor: Colors.grey.shade400,
            splashRadius: 50.0,
            value: true,
            onChanged: (value){
            },
          ),
           Switch(
            activeColor: Colors.white,
            activeTrackColor: Colors.cyan,
            inactiveThumbColor: Colors.blueGrey.shade600,
            inactiveTrackColor: Colors.grey.shade400,
            splashRadius: 50.0,
            value: true,
            onChanged: (value){
            },
          ),
           Switch(
            activeColor: Colors.white,
            activeTrackColor: Colors.cyan,
            inactiveThumbColor: Colors.blueGrey.shade600,
            inactiveTrackColor: Colors.grey.shade400,
            splashRadius: 50.0,
            value: true,
            onChanged: (value){
            },
          ),
          ],
         )
          ],
         )
        ],
      ),
    );
  }
}