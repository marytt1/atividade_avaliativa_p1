import 'package:flutter/material.dart';
import '../views/login_page.dart'; 

class SplashViewModel {
  void carregarEIrParaLogin(BuildContext context) {
    
    Future.delayed(const Duration(seconds: 3), () {
      if (!context.mounted) return;
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginPage()),
      );
      
    });
  }
}