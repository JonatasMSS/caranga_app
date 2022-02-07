import 'dart:ffi';

import 'package:caranga_app/consts/consts.dart';
import 'package:flutter/material.dart';

class HomeCareTextFormField extends StatelessWidget {
  HomeCareTextFormField({
    Key? key,
    this.label = 'Texto',
    this.obsText = false,
    this.controller,
    this.validator,
    this.onChange,
  }) : super(key: key);

  final String label;
  final bool obsText;
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onChange;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      onChanged: onChange,
      cursorColor: greenDark,
      decoration: InputDecoration(
        isDense: true,
        filled: true,
        fillColor: const Color(0xFFEEEDED),
        labelText: label,
        labelStyle: TextStyle(color: blueOpac),
        errorStyle: const TextStyle(color: Colors.redAccent),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(color: Color(0xFFEEEDED)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(color: Color(0xFFEEEDED)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(color: Color(0xFFEEEDED)),
        ),
      ),
    );
  }
}
