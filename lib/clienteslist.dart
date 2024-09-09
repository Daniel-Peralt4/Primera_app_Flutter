import 'package:flutter/material.dart';

class Perfil extends StatelessWidget {
  const Perfil({super.key, required this.info});
  final Map<String, dynamic> info;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil del cliente'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Nombre: ${info['nombre']}',
                style: const TextStyle(fontSize: 20)),
            Text('Apellido: ${info['apellido']}',
                style: const TextStyle(fontSize: 20)),
            Text('Edad: ${info['edad']}', style: const TextStyle(fontSize: 20)),
            Text('Teléfono: ${info['telefono']}',
                style: const TextStyle(fontSize: 20))
          ],
        ),
      ),
    );
  }
}
