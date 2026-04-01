import 'package:flutter/material.dart';
import 'package:validatorless/validatorless.dart';
import '../models/usuario_model.dart';
import '../data/usuario_mock_store.dart';

class CadastroViewModel extends ChangeNotifier {
  final formKey = GlobalKey<FormState>();

  final nomeController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool obscurePassword = true;

  String? nomeValidator(String? value) {
    return Validatorless.multiple([
      Validatorless.required('O nome é obrigatório'),
      Validatorless.min(3, 'O nome deve ter pelo menos 3 letras'),
    ])(value);
  }

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

  void cadastrar(BuildContext context) {
    if (formKey.currentState?.validate() ?? false) {
      
      final novoUsuario = UsuarioModel(
        nome: nomeController.text,
        email: emailController.text,
        senha: passwordController.text,
      );

      UsuarioMockStore.adicionarUsuario(novoUsuario);

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Cadastro realizado com sucesso!'),
          backgroundColor: Colors.green,
        ),
      );

      Navigator.pop(context);
    }
  }
}