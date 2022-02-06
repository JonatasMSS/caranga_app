import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class homeCare_textButton extends StatelessWidget {
  homeCare_textButton({
    Key? key,
    this.width,
    this.text,
    this.aling = Alignment.bottomCenter,
    required this.onPress,
  }) : super(key: key);

  final double? width;
  final String? text;
  final Alignment aling;
  final VoidCallback? onPress;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: aling,
      width: width,
      child: TextButton(
        onPressed: onPress,
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
