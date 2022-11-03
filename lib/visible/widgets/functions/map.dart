import "package:flutter/material.dart";

class Map extends StatefulWidget {
  final double height;
  final double witdh;
  final Color color;
  const Map({required this.color,required this.height,required this.witdh});

  @override
  State<Map> createState() => _MapState();
}

class _MapState extends State<Map> {

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
      child: const Image(
                image: AssetImage("assets/map.jpeg"),
                fit: BoxFit.cover,
              ),
    );
  }
}