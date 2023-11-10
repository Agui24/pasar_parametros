import 'package:flutter/material.dart';

class SegundaPantalla extends StatelessWidget {
  final String dato;
  final String nombre;
  final String apellido;
  final String edad;

  SegundaPantalla({
    required this.dato,
    required this.nombre,
    required this.apellido,
    required this.edad,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SEGUNDA PANTALLA'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Datos recibido:',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 10),
              Text(
                dato,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text(
                'Nombre: $nombre',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 10),
              Text(
                'Apellido: $apellido',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 10),
              Text(
                'Edad: $edad',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); // Regresar a la pantalla anterior
                },
                child: Text('Volver'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
