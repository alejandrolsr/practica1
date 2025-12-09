import 'package:flutter/material.dart';

class PerfilScreen extends StatelessWidget {
  const PerfilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Mi Perfil')),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 30),
              const CircleAvatar(radius: 80, backgroundColor: Colors.amber),

              const SizedBox(height: 20),
              const Text(
                "Alejandro López-Salvatierra Ruiz",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),

              const SizedBox(height: 15),
              const Text(
                "Estudiante DAM",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.lightGreen,
                ),
              ),

              const SizedBox(height: 40),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.email),
                  Icon(Icons.phone),
                  Icon(Icons.location_on_outlined)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
