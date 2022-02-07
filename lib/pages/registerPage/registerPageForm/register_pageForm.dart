import 'package:caranga_app/consts/consts.dart';
import 'package:caranga_app/core/widgets/homeCare_appBar.dart';
import 'package:caranga_app/core/widgets/homeCare_button.dart';
import 'package:caranga_app/core/widgets/homeCare_textFormField.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPageForm extends StatelessWidget {
  const RegisterPageForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: HomeCareAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Registrando um cuidador',
                style: GoogleFonts.dongle(
                  fontSize: 50,
                  color: blueOpac,
                ),
              ),
              HomeCareTextFormField(
                label: 'Usuário',
              ),
              const SizedBox(
                height: 30,
              ),
              HomeCareTextFormField(
                label: 'Numero de telefone',
              ),
              const SizedBox(
                height: 30,
              ),
              HomeCareTextFormField(
                label: 'E-mail',
              ),
              const SizedBox(
                height: 30,
              ),
              HomeCareTextFormField(
                label: 'Senha',
                obsText: true,
              ),
              const SizedBox(
                height: 30,
              ),
              HomeCareTextFormField(
                label: 'Confirmar Senha',
                obsText: true,
              ),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: HomeCareButton(
                  primColor: blueOpac,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
