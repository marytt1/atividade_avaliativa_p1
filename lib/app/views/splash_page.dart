import 'package:flutter/material.dart';
import '../viewmodels/splash_viewmodel.dart'; 

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}
class _SplashPageState extends State<SplashPage> {
  final SplashViewModel _viewModel = SplashViewModel();
  @override
  void initState() {
    super.initState();
    
    // função que conta 3 segundos.
    _viewModel.carregarEIrParaLogin(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: const Color.fromARGB(177, 0, 0, 0), 
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, 
          children: const [
            // Ícone
            Icon(Icons.theaters, size: 80, color:Color.fromARGB(255, 191, 64, 191)),
            SizedBox(height: 20),
            Text(
              'CINEMA', 
              style: TextStyle(
                fontSize: 28, 
                fontWeight: FontWeight.bold, 
                color: Colors.white,
              ),
            ),
            SizedBox(height: 40),
            // bolinha 
            CircularProgressIndicator(color: Color.fromARGB(255, 191, 64, 191)),
      
          ],
        ),
      ),
    );
  }
}