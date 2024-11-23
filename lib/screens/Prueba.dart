//Contendrá la clase principal y deberá tener lo siguiente:
//• Nombre del estudiante
// • Usuario de GitHub
// • Botón: Al presionar el botón se desplegará un mensaje de alerta preguntando si se
// desea ir al Ejercicio02. Si se acepta cargará la ventana del Ejercicio02, caso contrario
//cerrará el mensaje.

 import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/Ejercicio2.dart';


class Prueba extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Prueba')),
      body: Container(
       
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Ingrese su nombre', style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 179, 128, 128))),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Nombre del Estudiante',
              )

              ),
              ElevatedButton(
                onPressed: () => boton1(context),
                child: const Text('Ir a Ejercicio2'),
              ),
              
            ],
          ),
        ),
        
      ),
    );
  }


 
  void boton1(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Confirmación'),
        content: const Text('¿Deseas ir al Ejercicio2?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancelar'),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Ejercicio2()));
            },
            child: const Text('Aceptar'),
          ),
          
        ],
      ),
    );
  }
}
