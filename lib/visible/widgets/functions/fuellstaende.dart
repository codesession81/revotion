import "package:flutter/material.dart";

class Fuellstaende extends StatefulWidget {
  final double height;
  final double witdh;
  final Color color;
  const Fuellstaende({required this.color,required this.height,required this.witdh});

  @override
  State<Fuellstaende> createState() => _FuellstaendeState();
}

class _FuellstaendeState extends State<Fuellstaende> {
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
            children:const [
              Text("FÜLLSTÄNDE",style: TextStyle(color: Colors.grey),),
            ],
          ),
          const SizedBox(height: 20),
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const[
             SizedBox(
               height: 50,
               width: 50,
               child:Image(
                 image: AssetImage("assets/oil.png"),
               ),
             ),
            Text("46%",style: TextStyle(color: Colors.grey),),
          ],
          ),
          const SizedBox(height: 50),
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const[
             SizedBox(
               height: 50,
               width: 50,
               child:Image(
                 image: AssetImage("assets/gas.png"),
               ),
             ),
             Text("31%",style: TextStyle(color: Colors.grey),),
          ],
          ),
          const SizedBox(height: 50),
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children:const [
            SizedBox(
              height: 50,
              width: 50,
              child:Image(
                image: AssetImage("assets/low_water.png"),
              ),
            ),
             Text("15%",style: TextStyle(color: Colors.grey),),
          ],
          ),
          const SizedBox(height: 50),
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const[
             SizedBox(
                height: 50,
                width: 50,
                child:Image(
                  image: AssetImage("assets/battery.png"),
                ),
              ),
             Text("82%",style: TextStyle(color: Colors.grey),),
          ],
          )
        ],
      ),
    );
  }
}