import 'package:flutter/material.dart';
import 'package:primera_app/clienteslist.dart';

class Cliente extends StatelessWidget {
  const Cliente({super.key});
  final List<Map<String, dynamic>> clientes = const [
    {
      'nombre': 'Juan',
      'apellido': 'Salcedo',
      'edad': 25,
      'telefono': '32123192301',
    },
    {
      'nombre': 'Pedro',
      'apellido': 'Perez',
      'edad': 30,
      'telefono': '32123192301',
    },
    {
      'nombre': 'Maria',
      'apellido': 'Rodriguez',
      'edad': 35,
      'telefono': '32123192301',
    },
    {
      'nombre': 'Roberto',
      'apellido': 'Fernandez',
      'edad': 40,
      'telefono': '32123192301',
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Listado de clientes'),
        ),
        body: ListView.builder(
            itemCount: clientes.length,
            itemBuilder: (BuildContext context, int index) {
              final infoCliente = clientes[index];
              return ListTile(
                title: Text('Cliente $index'),
                subtitle: Text('Descripción del cliente $index'),
                onTap: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Perfil(info: infoCliente)),
                  ),
                },
              );
            }));
  }
}
