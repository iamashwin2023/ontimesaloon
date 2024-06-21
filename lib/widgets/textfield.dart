import 'package:flutter/material.dart';


class TextFieldBox extends StatelessWidget {
  final TextEditingController textEditingController;
  final bool isPass;
  final TextInputType textInputType;
  final String hintText;

  const TextFieldBox({
    super.key,
    required this.hintText,
    required this.isPass,
    required this.textInputType,
    required this.textEditingController,
  });

  @override
  Widget build(BuildContext context) {
 final inputBorder = OutlineInputBorder(
      borderSide:BorderSide.none,
      borderRadius: BorderRadius.circular(5)
    );
    return TextField(
      controller: textEditingController,
      decoration: InputDecoration(
        
        contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        hintText: hintText, 

        filled: true,
        fillColor: Colors.white,
        focusColor: Colors.white,
        focusedBorder:inputBorder,
        enabledBorder:inputBorder,
        border: InputBorder.none,
      ),
      keyboardType: textInputType,
      obscureText: isPass,
    );
  }
}
