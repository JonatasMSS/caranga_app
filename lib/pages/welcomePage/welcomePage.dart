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
    final String _im = 'assets/icons/Icon_helper.svg';
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
                color: Colors.grey,
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
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 12),
                child: SvgPicture.asset(
                  "assets/icons/Icon_helper.svg",
                  width: 90,
                  fit: BoxFit.contain,
                ),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.centerLeft,
                  height: 50,
                  child: Text(
                    "Logar-se como cuidador",
                    style: GoogleFonts.dongle(
                      fontSize: 33,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
