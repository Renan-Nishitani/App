import 'package:flutter/material.dart';

const IconData home = IconData(0xe318, fontFamily: 'MaterialIcons');

class Facul3 extends StatelessWidget {
  const Facul3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff0572ae),
        foregroundColor: Colors.white, // Cor de fundo da AppBar
      ));
      //       backgroundColor: const Color(0xfffcfefe),
  }
}