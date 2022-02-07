import 'package:caranga_app/pages/registerPage/registerPageForm/register_pageForm.dart';
import 'package:caranga_app/pages/registerPage/register_page.dart';
import 'package:get/get.dart';

class RegisterrouthPage {
  RegisterrouthPage._();

  static final routers = <GetPage>[
    GetPage(name: '/registerPage/form', page: () => const RegisterPageForm()),
    GetPage(name: '/registerPage', page: () => const RegisterPage()),
  ];
}
