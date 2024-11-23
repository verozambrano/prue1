import 'package:flutter/material.dart';

class Ejercicio2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const double t = 25; // Tiempo constante
    final TextEditingController velocidadAngularController = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text('Ejercicio2')),
      body: Container(
        
        
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: velocidadAngularController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(labelText: 'Velocidad angular (w) en rad/s'),
              ),
              ElevatedButton(
                onPressed: () {
                  final double w = double.tryParse(velocidadAngularController.text) ?? 0;
                  final double distancia = w * t;
                  _showResult(context, 'Distancia recorrida: $distancia radianes.');
                },
                child: const Text('Calcular'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showResult(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Resultado'),
        content: Text(message),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: const Text('OK')),
        ],
      ),
    );
  }
}