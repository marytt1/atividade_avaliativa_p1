import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF090414), 
      
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.menu, color: Colors.white70),
                      Text(
                        'CINEMA',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                          color: Color.fromARGB(255, 191, 64, 191),
                          letterSpacing: 2,
                        ),
                      ),
                      CircleAvatar(
                        radius: 18,
                        backgroundColor: Colors.white24,
                        child: Icon(Icons.person, color: Colors.white),
                      ),
                    ],
                  ),
                ),

                Expanded(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Column(
                      children: [
                        const SizedBox(height: 60),

                        // BOAS-VINDAS
                        const Text(
                          'Bem-vindo ao',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            shadows: [Shadow(color: Colors.white54, blurRadius: 10)],
                          ),
                        ),
                        const Text(
                          'CINEMA',
                          style: TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.w900,
                            color: Color.fromARGB(255, 191, 64, 191),
                            letterSpacing: 2,
                          ),
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          'O lugar perfeito para\nentretenimento ilimitado.',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 14, color: Colors.white54, height: 1.5),
                        ),
                        const SizedBox(height: 48),

                        // EM DESTAQUE
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(width: 4, height: 20, color: const Color.fromARGB(255, 191, 64, 191)),
                                const SizedBox(width: 8),
                                const Text(
                                  'Em Destaque',
                                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                                ),
                              ],
                            ),
                            const Text(
                              'VER TODOS',
                              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 191, 64, 191)),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        
                        // CARTÃO DO FILME
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: const Color(0xFF151020), 
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: Icon(Icons.movie_creation, size: 48, color: Colors.white24),
                              ),
                              Center(
                                child: Text('CARREGANDO POSTER', style: TextStyle(color: Colors.white24, fontSize: 12, fontWeight: FontWeight.bold)),
                              ),
                              SizedBox(height: 30),
                              Text(
                                'O GRITO 6',
                                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                              ),
                              SizedBox(height: 4),
                              Text('2h 15m', style: TextStyle(fontSize: 12, color: Colors.white54)),
                            ],
                          ),
                        ),
                        const SizedBox(height: 24),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}