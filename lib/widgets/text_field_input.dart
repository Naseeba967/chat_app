import 'package:flutter/material.dart';

class TextFieldInput extends StatelessWidget {
  final TextEditingController textEditingController;
  final bool isPass;
  final String hintText;
  final TextInputType textInputType;
  const TextFieldInput({Key? key, 
  required this.textEditingController,
  required this.hintText,
   this.isPass = false,
  required this.textInputType,  
  })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(7),
        ),
        contentPadding: const EdgeInsets.all(8),
      ),
      obscureText: isPass,
      keyboardType: textInputType,
    );
  }
}
