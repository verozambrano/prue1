import 'package:flutter/material.dart';

class Ejercicio1 extends StatelessWidget {
  final TextEditingController _alturaInicialController = TextEditingController();
  final TextEditingController _tiempoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ejercicio1')),
    
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _alturaInicialController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(labelText: 'Altura inicial (hi) en metros'),
              ),
              TextField(
                controller: _tiempoController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(labelText: 'Tiempo (t) en segundos'),
              ),
              ElevatedButton(
                onPressed: () => calcular(context),
                child: const Text('Calcular'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void calcular(BuildContext context) {
    final double hi = double.tryParse(_alturaInicialController.text) ?? 0;
    final double t = double.tryParse(_tiempoController.text) ?? 0;
    const double a = 20;
    final double h = hi + (0.5 * a * t * t);

    String message = h >= 1000
        ? 'Lanzamiento exitoso: Altura alcanzada $h m.'
        : 'Lanzamiento fallido: Altura alcanzada $h m.';
    _showResult(context, message);
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