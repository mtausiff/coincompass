import 'package:flutter/material.dart';

class InputTextFieldWidget extends StatelessWidget {
  final TextEditingController textEditingController;
  final String hintText;
  final String keyType;

  const InputTextFieldWidget(
      this.textEditingController, this.hintText, this.keyType, {super.key});

  TextInputType _actualKeyboardType(String keyType){
    if(keyType.compareTo("email") == 0){
      return TextInputType.emailAddress;
    }
    else if(keyType.compareTo("number") == 0){
      return TextInputType.number;
    }
    else {
      return TextInputType.text;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      child: TextField(
        controller: textEditingController,
        keyboardType: _actualKeyboardType(keyType),
        decoration: InputDecoration(
            alignLabelWithHint: true,
            focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black)),
            fillColor: Colors.white54,
            hintText: hintText,
            hintStyle: const TextStyle(color: Colors.grey),
            contentPadding: const EdgeInsets.only(bottom: 15),
            focusColor: Colors.white60),
      ),
    );
  }
}
