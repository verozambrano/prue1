import 'package:flutter/material.dart';
import 'package:flutter_application_1/navegador/drawer.dart';
 
 void main(){
  runApp(MiPru());
 }
 class MiPru extends StatelessWidget {
  const MiPru({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Cuerpo(),
    );
  }
 }
 class Cuerpo extends StatelessWidget {
  const Cuerpo({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ESTA ES UNA PRUEBA'),
        centerTitle: true,
      ),
      drawer: MyDrawer(),
    );
  }
 }

