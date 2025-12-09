import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/adivina_screen.dart';
import 'screens/perfil_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Examen Flutter',
      initialRoute: '/',
      routes: {
        '/':(context) => const HomeScreen(),
        '/perfil': (context) => const PerfilScreen(),
        '/adivina': (context) => const AdivinaScreen(),
      },
    );
  }
}
