import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class homeCare_textButton extends StatelessWidget {
  homeCare_textButton({
    Key? key,
    this.width,
    this.text,
    this.aling = Alignment.bottomCenter,
  }) : super(key: key);

  double? width;
  String? text;
  Alignment aling;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: aling,
      width: width,
      child: TextButton(
        onPressed: () {},
        child: Text(
          "$text",
          style: GoogleFonts.dongle(
            fontSize: 40,
            color: Colors.grey[600],
          ),
        ),
      ),
    );
  }
}
