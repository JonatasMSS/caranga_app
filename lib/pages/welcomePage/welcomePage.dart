import 'package:caranga_app/consts/consts.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          // Logo Container
          Container(
            height: 170,
            margin: const EdgeInsets.only(top: 20),
            width: screenSize.width,
            //color: Colors.red,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey,
              ),
            ),
          ),
          //Mensagem de Boas vindas
          Container(
            height: 100,
            alignment: Alignment.bottomCenter,
            margin: const EdgeInsets.only(top: 10),
            width: screenSize.width,
            //color: Colors.red,
            child: Text(
              "Bem vindo!",
              style: GoogleFonts.dongle(
                fontSize: 115,
                wordSpacing: 1,
                color: greenOpac,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: screenSize.width,
            //color: Colors.red,
            child: Text(
              "Ao Home Care!",
              style: GoogleFonts.dongle(
                fontSize: 40,
                wordSpacing: 1,
                color: Colors.green[900],
              ),
            ),
          )
        ],
      ),
    );
  }
}
