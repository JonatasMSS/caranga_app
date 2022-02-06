import 'package:caranga_app/pages/registerPage/register_page.dart';
import 'package:caranga_app/pages/welcomePage/welcomePage.dart';
import 'package:caranga_app/pages/welcomePage/welcomePageBindings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(
          name: '/',
          binding: WelcomePageBindings(),
          page: () => WelcomePage(),
        ),
        GetPage(
          name: '/registerPage',
          page: () => const RegisterPage(),
        )
      ],
    );
  }
}
