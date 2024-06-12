import 'package:flutter/material.dart';

const IconData home = IconData(0xe318, fontFamily: 'MaterialIcons');

class Facul4 extends StatelessWidget {
  const Facul4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffe3032d),
        foregroundColor: Colors.white, // Cor de fundo da AppBar
      )
      //       backgroundColor: const Color(0xfffcfefe),
      );
  }
}