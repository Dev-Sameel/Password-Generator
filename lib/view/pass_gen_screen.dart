import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/pass_gen_cntrl.dart';
import 'clipboard.dart';
import 'widgets/cus_checkbox.dart';
import 'widgets/cus_textfield.dart';

class PasswordGenerator extends StatelessWidget {
  final PassController controller = Get.put(PassController());

  PasswordGenerator({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        titleTextStyle: const TextStyle(
            color: Color.fromARGB(255, 255, 208, 0),
            fontSize: 25,
            fontWeight: FontWeight.bold),
        backgroundColor: Colors.black,
        title: const Text('Password Generator'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CusTextfield(controller: controller),
              CusCheckBox(
                value: 'uc',
                cKey: 'uppercase_checkbox',
                label: 'Include Uppercase Letters',
              ),
              CusCheckBox(
                 value: 'lc',
                cKey: 'lowercase_checkbox',
                label: 'Include Lowercase Letters',
              ),
              CusCheckBox(
                 value: 'num',
                cKey: 'numbers_checkbox',
                label: 'Include Numbers',
              ),
              CusCheckBox(
                 value: 'sc',
                cKey: 'special_chars_checkbox',
                label: 'Include Special Characters',
              ),
              ElevatedButton(
                key: const Key('generate_password_button'),
                onPressed: controller.generatePassword,
                child: const Text(
                  'Generate Password',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              const SizedBox(height: 16),
              Obx(
                () => controller.generatedPassword.value.isNotEmpty
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const Text(
                            'Generated Password:',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 106, 255, 111)),
                          ),
                          const SizedBox(height: 8),
                          SelectableText(controller.generatedPassword.value,
                              style: const TextStyle(color: Colors.white)),
                          const SizedBox(height: 8),
                          const ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll(
                                    Color.fromARGB(255, 255, 208, 0))),
                            key: Key('copy_to_clipboard_button'),
                            onPressed: copyToClipboard,
                            child: Text(
                              'Copy to Clipboard',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      )
                    : const SizedBox.shrink(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
