import 'package:flutter/material.dart';

import 'package:caranga_app/consts/consts.dart';

class HomeCareButton extends StatelessWidget {
  const HomeCareButton({
    Key? key,
    this.primColor,
  }) : super(key: key);

  final Color? primColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: const Icon(
        Icons.arrow_forward,
        size: 40,
      ),
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        primary: primColor,
        onPrimary: Colors.white,
        padding: const EdgeInsets.all(9),
      ),
    );
  }
}
