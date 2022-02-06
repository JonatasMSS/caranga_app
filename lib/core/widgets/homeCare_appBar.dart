import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeCareAppBar extends AppBar {
  HomeCareAppBar({
    Key? key,
    double elevation = 0,
  }) : super(
          key: key,
          elevation: elevation,
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(
            color: Colors.black,
          ),
        );
}
