import 'package:flutter/material.dart';

import '../../controller/pass_gen_cntrl.dart';

class CusTextfield extends StatelessWidget {
  const CusTextfield({
    super.key,
    required this.controller,
  });

  final PassController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // ignore: deprecated_member_use
      toolbarOptions: const ToolbarOptions(
        copy: true,
        cut: true,
        paste: false,
        selectAll: false,
      ),
      style: const TextStyle(
        color: Color.fromARGB(255, 255, 208, 0),
        fontSize: 18,
      ),
      key: const Key('password_length_textfield'),
      controller: controller.lengthController,
      decoration: const InputDecoration(
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(25)),
            borderSide: BorderSide(color: Color.fromARGB(255, 255, 255, 255))),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(25)),
            borderSide: BorderSide(color: Color.fromARGB(255, 255, 208, 0))),
        labelText: 'Password Length',
        labelStyle: TextStyle(
          color: Color.fromARGB(255, 255, 255, 255),
          fontSize: 18,
        ),
      ),
      keyboardType: TextInputType.number,
    );
  }
}
