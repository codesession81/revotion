import "package:flutter/material.dart";

class Musik extends StatefulWidget {
  final double height;
  final double witdh;
  final Color color;
  const Musik({required this.color,required this.height,required this.witdh});

  @override
  State<Musik> createState() => _MusikState();
}

class _MusikState extends State<Musik> {
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
          children: const [
            Text("MUSIK",style: TextStyle(color: Colors.grey),)
          ],
         ),
         const SizedBox(height: 20),
         Container(
          width: 150,
          height: 150,
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
            child: const Icon(Icons.music_note,size: 60,),
          ),
         const SizedBox(height: 40),
         const Center(
          child: Text("Sweet Home Alabama",style: TextStyle(fontWeight: FontWeight.bold),),
         ),
         const Center(
          child: Text("Lynyrd Skynyrd",style: TextStyle(color: Colors.grey),),
         ),
         const SizedBox(height: 60),
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:const [
            Icon(Icons.skip_previous,size: 30,color: Colors.grey,),
            Icon(Icons.play_arrow,size: 40,),
            Icon(Icons.skip_next,size: 30,color: Colors.grey,),
          ],
         ),
         const SizedBox(height: 50),
          Slider(             
              min: 0,
              max: 20,
              value:20,
              onChanged: (value){}
          ),  
        ],
      ),
    );
  }
}