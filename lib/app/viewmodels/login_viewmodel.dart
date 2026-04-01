import 'package:flutter/material.dart';
import 'package:validatorless/validatorless.dart';
import '../data/usuario_mock_store.dart'; 
import '../views/home_page.dart';

class LoginViewModel extends ChangeNotifier {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool obscurePassword = true;

  String? emailValidator(String? value) {
    return Validatorless.multiple([
      Validatorless.required('O e-mail é obrigatório'),
      Validatorless.email('Digite um e-mail válido'),
    ])(value);
  }

  String? passwordValidator(String? value) {
    return Validatorless.multiple([
      Validatorless.required('A senha é obrigatória'),
      Validatorless.min(3, 'A senha deve ter pelo menos 3 caracteres'), 
    ])(value);
  }

  void togglePasswordVisibility() {
    obscurePassword = !obscurePassword;
    notifyListeners(); 
  }

  void entrar(BuildContext context) {
    if (formKey.currentState?.validate() ?? false) {
      bool sucesso = UsuarioMockStore.validarLogin(
        emailController.text,
        passwordController.text,
      );

      if (sucesso) {
        Navigator.pushReplacement(
  context,
  MaterialPageRoute(builder: (context) => const HomePage()),
);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('E-mail ou senha inválidos!'),
            backgroundColor: Colors.redAccent,
          ),
        );
      }
    }
  }
}