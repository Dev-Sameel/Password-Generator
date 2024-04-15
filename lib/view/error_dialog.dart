import 'package:flutter/material.dart';
import 'package:get/get.dart';

void showErrorDialog(String message) {
  Get.dialog(
    AlertDialog(
      backgroundColor: const Color.fromARGB(255, 167, 221, 238),
      title: const Text(
        'Error',
        style: TextStyle(fontWeight: FontWeight.w500),
      ),
      content: Text(
        message,
        style: const TextStyle(fontSize: 18),
      ),
      actions: [
        TextButton(
          onPressed: () => Get.back(),
          child: const Text(
            'OK',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ],
    ),
  );
}
