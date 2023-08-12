import 'package:flutter/material.dart';
import 'package:peymo/core/core.dart';

class PeymoInputField extends StatelessWidget {
  final TextEditingController peymoController;
  final TextInputType textType;
  const PeymoInputField({
    super.key,
    required this.peymoController,
    required this.textType,
  });
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: peymoController,
      keyboardType: textType,
      decoration: InputDecoration(
        enabledBorder: enabledBorder,
        border: inputBorder,
        focusedErrorBorder: focusedErrorBorder,
      ),
    );
  }
}
