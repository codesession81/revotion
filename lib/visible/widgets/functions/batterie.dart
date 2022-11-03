import "package:flutter/material.dart";

class Batterie extends StatefulWidget {
  final double height;
  final double witdh;
  final Color color;
  const Batterie({required this.color,required this.height,required this.witdh});

  @override
  State<Batterie> createState() => _BatterieState();
}

class _BatterieState extends State<Batterie> {
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
         Row(
          children: const[
            Text("BATTERIE",style: TextStyle(color: Colors.grey),)
          ],
         ),
         const SizedBox(height: 40),
         const Center(
          child: Text("72%",style: TextStyle(fontSize: 40),),
         ),
         Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const[
            RotatedBox(
                quarterTurns: 1,
                child: IconButton(
                  icon: Icon(Icons.battery_6_bar,color: Colors.green,size: 60,),
                  onPressed: null,
                ),
              ),
          ],
         )
        ],
      ),
    );
  }
}