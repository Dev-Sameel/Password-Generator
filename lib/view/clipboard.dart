import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../controller/pass_gen_cntrl.dart';

var controllerl = Get.put(PassController());

void copyToClipboard() {
  Clipboard.setData(ClipboardData(text: controllerl.generatedPassword.value));
  Get.snackbar('Password Copied', 'Password copied to clipboard',
      backgroundColor: const Color.fromARGB(255, 141, 206, 226));
}
