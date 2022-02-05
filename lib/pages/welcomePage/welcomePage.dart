import 'dart:ui';

import 'package:caranga_app/consts/consts.dart';
import 'package:caranga_app/pages/welcomePage/welcomePageController.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = Get.find<WelcomePageController>();
    final screenSize = _controller.screenSize(context);

    Get.put(screenSize);
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
                color: logoColor,
              ),
            ),
          ),
          //Mensagem de Boas vindas
          Container(
            height: 109,
            alignment: Alignment.bottomCenter,
            margin: const EdgeInsets.only(top: 10),
            width: screenSize.width,
            //color: Colors.red,
            child: Text(
              "Bem vindo!",
              style: GoogleFonts.dongle(
                fontSize: 100,
                wordSpacing: 0,
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
          ),
          SizedBox(
            height: 40,
          ),
          //LOGINS
          const LoginSection(
            im: 'assets/icons/Icon_helper.svg',
            txt: "Logar-se como cuidador",
          ),
          const SizedBox(
            height: 20,
          ),
          const LoginSection(
            im: 'assets/icons/Icon_older.svg',
            txt: "Logar-se como necessitado",
          ),
          Expanded(
            child: Container(
              alignment: Alignment.bottomCenter,
              width: screenSize.width,
              child: Container(
                child: Text(
                  "Registrar-se",
                  style: GoogleFonts.dongle(
                    fontSize: 40,
                    color: Colors.grey[600],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.topCenter,
              width: screenSize.width,
              child: Container(
                child: Text(
                  "Necessito de ajuda",
                  style: GoogleFonts.dongle(
                    fontSize: 40,
                    color: Colors.grey[600],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LoginSection extends StatelessWidget {
  const LoginSection({Key? key, required String im, required String txt})
      : _im = im,
        _txt = txt,
        super(key: key);

  final String _im;
  final String _txt;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 10, right: 5),
          child: SvgPicture.asset(
            _im,
            width: 85,
            fit: BoxFit.contain,
          ),
        ),
        Expanded(
          child: Container(
            alignment: Alignment.centerLeft,
            height: 50,
            child: Text(
              _txt,
              style: GoogleFonts.dongle(
                fontSize: 30,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
