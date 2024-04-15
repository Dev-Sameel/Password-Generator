import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/pass_gen_cntrl.dart';

class CusCheckBox extends StatelessWidget {
  final PassController controllerr = Get.find();

  CusCheckBox({
    super.key,
    required this.value,
    required this.cKey,
    required this.label,
  });

  // final PassController controller;
  final String cKey;
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    RxBool data = value == "uc"
        ? controllerr.includeUppercase
        : value == 'lc'
            ? controllerr.includeLowercase
            : value == 'num'
                ? controllerr.includeNumbers
                : controllerr.includeSpecialChars;
    return Obx(() {
      return CheckboxListTile(
        checkColor: Colors.black,
        fillColor: const MaterialStatePropertyAll(Color.fromARGB(255, 255, 208, 0)),
        key: Key(cKey),
        title: Text(
          label,
          style: const TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 18,
          ),
        ),
        value: data.value,
        onChanged: (value) => data.value = value!,
      );
    });
  }
}
