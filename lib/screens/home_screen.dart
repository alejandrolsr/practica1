import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inicio"),
        backgroundColor: Colors.indigo,
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(accountName: Text("Alejandro"), accountEmail: Text("alejandro@iespablopicasso.es"),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Text("A", style: TextStyle(fontSize: 40)),
            ),
            decoration: BoxDecoration(color: Colors.indigo),
            ),

            ListTile(
              leading: const Icon(Icons.person),
              title: const Text("Mi Perfil"),
              onTap: (){
                Navigator.pop(context);
                Navigator.pushNamed(context, '/perfil');
              },
            ),
            ListTile(
              leading: const Icon(Icons.games),
              title: const Text('Adivina el número'),
              onTap: (){
                Navigator.pop(context);
                Navigator.pushNamed(context, '/adivina');
              },
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text("Bienvenido al Examen", style: TextStyle(fontSize: 24)),
      ),
    );
  }
}