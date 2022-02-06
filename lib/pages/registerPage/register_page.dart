import 'package:caranga_app/consts/consts.dart';
import 'package:caranga_app/core/widgets/homeCare_appBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/utils.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: HomeCareAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(
              height: context.heightTransformer(dividedBy: 20),
            ),
            SizedBox(
              child: Text(
                "Quem estamos registrando?",
                softWrap: true,
                style: GoogleFonts.dongle(
                  fontSize: 60,
                  color: greenOpac,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 50),
              child: Column(
                children: [
                  SvgPicture.asset(
                    'assets/icons/Icon_helper.svg',
                    width: context.widthTransformer(dividedBy: 4.5),
                  ),
                  Text(
                    "Um cuidador(a)",
                    style: GoogleFonts.dongle(
                      fontSize: 38,
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 50),
              child: Column(
                children: [
                  SvgPicture.asset(
                    'assets/icons/Icon_older.svg',
                    width: context.widthTransformer(dividedBy: 4.5),
                  ),
                  Text(
                    "Um necessitado(a)",
                    style: GoogleFonts.dongle(
                      fontSize: 38,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
