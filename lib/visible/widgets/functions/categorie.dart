import "package:flutter/material.dart";

class Categorie extends StatefulWidget {
  final double height;
  final double witdh;
  final Color color;
  const Categorie({required this.color,required this.height,required this.witdh});

  @override
  State<Categorie> createState() => _CategorieState();
}

class _CategorieState extends State<Categorie> {
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
              Text("BOOT",style: TextStyle(color: Colors.grey)),
            ],
          ),
          Row(
            children: [
              const SizedBox(
                        height: 150,
                        width: 450,
                        child:Image(
                          image: AssetImage("assets/speed-boat.png"),
                        ),
                      ),
            ],
          )
        ],
      ),
    );
  }
}