import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyFormController extends GetxController {
  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();

  var nameError = RxString('');
  var emailError = RxString('');
  var emailAlreadyUsed = RxBool(false);

  void validateForm() {
    if (formKey.currentState!.validate()) {
      // Perform API call
      _makeApiCall();
    }
  }

  void _makeApiCall() async {
    // Get form values
    final name = nameController.text;
    final email = emailController.text;

    // Make API call here and handle response
    // In this example, we're just returning a random boolean value to simulate the API call
    final isEmailUsed = Future.delayed(Duration(seconds: 1), () => true);

    // If the email is already in use, set the error using GetX
    if (await isEmailUsed) {
      emailAlreadyUsed.value = true;
      emailError.value = 'Email is already in use';
    } else {
      // If there is no validation error from the API response, clear the error using GetX
      emailAlreadyUsed.value = false;
      emailError.value = '';
    }
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    super.dispose();
  }
}

class MyFormWidget extends StatelessWidget {
  final controller = Get.put(MyFormController());

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formKey,
      child: Column(
        children: [
          TextFormField(
            controller: controller.nameController,
            validator: (value) => value!.isEmpty ? 'Name is required' : null,
            decoration: InputDecoration(
              labelText: 'Name',
              errorText: controller.nameError.value.isNotEmpty ? controller.nameError.value : null,
            ),
          ),
          TextFormField(
            controller: controller.emailController,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Email is required';
              } else if (!value.contains('@')) {
                return 'Email is invalid';
              } else if (controller.emailAlreadyUsed.value) {
                return 'Email is already in use';
              }
              return null;
            },
            decoration: InputDecoration(
              labelText: 'Email',
              errorText: controller.emailError.value.isNotEmpty ? controller.emailError.value : null,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Validate form before API call
              controller.validateForm();
            },
            child: Text('Submit'),
          ),
        ],
      ),
    );
  }
}
