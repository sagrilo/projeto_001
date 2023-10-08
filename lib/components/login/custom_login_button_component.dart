import 'package:flutter/material.dart';
import 'package:projeto_001/controllers/login_controller.dart';

class CustomLoginButtonComponent extends StatelessWidget {
  final LoginController loginController;
  const CustomLoginButtonComponent({super.key, required LoginController this.loginController});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: loginController.inLoader,
      builder: (_, inLoader, __) => inLoader
          ? CircularProgressIndicator()
          : ElevatedButton(
          onPressed: () {
            loginController.auth().then((result) {
              if (result) {
                Navigator.of(context)
                    .pushReplacementNamed('/home');
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: const Text('Falha ao realizar login'),
                    duration: const Duration(seconds: 3),
                  ),
                );
              }
            });
          },
          child: Text('Login')),
    );
  }
}
