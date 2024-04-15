import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../view/error_dialog.dart';

class PassController extends GetxController {
  final TextEditingController lengthController = TextEditingController();
  final includeUppercase = true.obs;
  final includeLowercase = true.obs;
  final includeNumbers = true.obs;
  final includeSpecialChars = true.obs;

  final generatedPassword = ''.obs;

  void generatePassword() {
    int length = int.tryParse(lengthController.text) ?? 12;
    if (length < 6 || length > 20) {
      showErrorDialog(
          'Password contains at least 6 characters and at most 20 characters.');
      return;
    }

    String charset = '';
    if (includeUppercase.value) charset += 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    if (includeLowercase.value) charset += 'abcdefghijklmnopqrstuvwxyz';
    if (includeNumbers.value) charset += '0123456789';
    if (includeSpecialChars.value) charset += '!@#\$%^&*()_+';

    if (charset.isEmpty) {
      showErrorDialog('Please select at least one character set.');
      return;
    }

    generatedPassword.value = generateRandomPassword(length, charset);
  }

  String generateRandomPassword(int length, String charset) {
    Random random = Random();
    List<String> passwordList = List.generate(
        length, (index) => charset[random.nextInt(charset.length)]);
    return passwordList.join();
  }
}
