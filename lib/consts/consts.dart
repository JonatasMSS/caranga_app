import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

Color greenOpac = const Color.fromRGBO(56, 211, 100, 71);
Color greenDark = const Color.fromRGBO(41, 83, 53, 100);
Color logoColor = Colors.grey;
Color blueOpac = Color(0xFF7DCEE8);

final Widget helperIcon = SvgPicture.asset(
  "assets/icons/Icon_helper.svg",
  semanticsLabel: 'HelperIcon',
);
