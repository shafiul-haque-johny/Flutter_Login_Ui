import 'package:flutter/material.dart';

import '../colorCode.dart';

class LogInField extends StatelessWidget {
  final String hintText;
  final Color colorIndex;

  const LogInField({Key? key, required this.hintText, required this.colorIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 400,
      ),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hintText,
          contentPadding: const EdgeInsets.all(19),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: ColorCode.borderColor,
              width: 3,
            ),
            borderRadius: BorderRadius.circular(
              10,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: colorIndex,
              width: 3,
            ),
          ),
        ),
      ),
    );
  }
}
