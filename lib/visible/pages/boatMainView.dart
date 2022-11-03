import 'package:flutter/material.dart';
import 'package:revotion/visible/pages/content/boatContent.dart';

class BoatMainView extends StatefulWidget {
  const BoatMainView({super.key});

  @override
  State<BoatMainView> createState() => _BoatMainViewState();
}

class _BoatMainViewState extends State<BoatMainView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor:Colors.white,
      body: const BoatContent()
    );
  }
}