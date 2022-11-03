import "package:flutter/material.dart";

class Sensor extends StatefulWidget {
  final double height;
  final double witdh;
  final Color color;
  const Sensor({required this.color,required this.height,required this.witdh});

  @override
  State<Sensor> createState() => _SensorState();
}

class _SensorState extends State<Sensor> {
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
        children: [
          Expanded(
            flex: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("32",style: TextStyle(fontSize: 60),),
                Text("KM/H",style: TextStyle(color: Colors.grey[350],fontSize: 30))
              ],
            ),
          ),
          Expanded(
            flex: 5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 SizedBox(
                  width: 150,
                  height: 70,
                  child: Stack(
                    children: [
                     const Positioned(
                      child:  SizedBox(
                        height: 50,
                        width: 50,
                        child: Image(
                          image: AssetImage("assets/boat.png"),
                        ),
                      )
                     ),
                     const Positioned(
                      left:15,
                      bottom: 10,
                      child: SizedBox(
                        height: 25,
                        width: 25,
                        child:RotatedBox(
                        quarterTurns: 2,
                        child:Image(
                          image: AssetImage("assets/wireless.png"),
                        ),
                      ),
                      )
                     ),
                     Positioned(
                      top: 15,
                      right: 35,
                      child: Text("36 M",style: TextStyle(color: Colors.grey[350],fontSize: 20)),
                     )
                    ],
                  ),
                 ),
                ],
               ),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(
                        height: 40,
                        width: 40,
                        child:Image(
                          image: AssetImage("assets/high-temperature.png"),
                        ),
                      ),
                 Text("29 °C M",style: TextStyle(color: Colors.grey[350],fontSize: 20))
                ],
               ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(
                        height: 40,
                        width: 40,
                        child:Image(
                          image: AssetImage("assets/temperature.png"),
                        ),
                      ),
                 Text("15 °C M",style: TextStyle(color: Colors.grey[350],fontSize: 20))
                ],
               )
              ],
            ),
          )
        ],
      ),
    );
  }
}