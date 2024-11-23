import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/Ejercicio1.dart';
import 'package:flutter_application_1/screens/Ejercicio2.dart';
import 'package:flutter_application_1/screens/Prueba.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) ;

  @override Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.home),
            title: Text("Prueba"),
            onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context)=>Prueba())),
          ),
          ListTile(
            title: Text("Ejercicio1"),
            onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context)=>Ejercicio1())),
          ),
          ListTile(
            title: Text("Ejercicio2"),
            onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context)=>Ejercicio2())),
          )
        ],
      ),
    );
  }
}