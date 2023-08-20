import 'package:flutter/material.dart';

import '../colorCode.dart';

class LogInField extends StatelessWidget {
  final String hintText;

  const LogInField({Key? key, required this.hintText}) : super(key: key);

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
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: ColorCode.gradient2,
              width: 3,
            ),
          ),
        ),
      ),
    );
  }
}
