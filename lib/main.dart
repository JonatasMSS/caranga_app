import 'package:caranga_app/pages/welcomePage/welcomePage.dart';
import 'package:caranga_app/pages/welcomePage/welcomePageBindings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';

void main() => runApp(MainApp());

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      onReady: () {
        SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
      },
      getPages: [
        GetPage(
          name: '/',
          binding: WelcomePageBindings(),
          page: () => WelcomePage(),
        ),
      ],
    );
  }
}
