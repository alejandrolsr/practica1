import 'package:flutter/material.dart';

class AdivinaScreen extends StatefulWidget {
  const AdivinaScreen({super.key});

  @override
  State<AdivinaScreen> createState() => _AdivinaScreenState();
}

class _AdivinaScreenState extends State<AdivinaScreen> {

  final _formKey = GlobalKey<FormState>();
  final _controller = TextEditingController();
  final int _numeroSecreto = 5; 

  void _comprobarNumero() {
    if (_formKey.currentState!.validate()) {
      int numeroUsuario = int.parse(_controller.text);

      if (numeroUsuario == _numeroSecreto) {
      
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('¡CORRECTO! Has ganado 🎉'), backgroundColor: Colors.green),
        );
      } else {
        
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Fallaste. Inténtalo de nuevo.'), backgroundColor: Colors.red),
        );
        _controller.clear();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Juego Adivinanza')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Adivina el número del 1 al 10', style: TextStyle(fontSize: 20)),
              const SizedBox(height: 20),
              
              TextFormField(
                controller: _controller,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Introduce tu número',
                  border: OutlineInputBorder(),
                ),
                
                validator: (value) {
                  if (value == null || value.isEmpty) return 'Por favor escribe algo';
                  if (int.tryParse(value) == null) return 'Solo números válidos';
                  return null;
                },
              ),
              const SizedBox(height: 20),
              // BOTÓN
              ElevatedButton(
                onPressed: _comprobarNumero,
                child: const Text('Comprobar', style: TextStyle(fontSize: 18)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}