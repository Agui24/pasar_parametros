import 'package:flutter/material.dart';
import 'package:pasar_parametros/segunda_pantalla.dart';

class PrimeraPantalla extends StatefulWidget {
  @override
  _PrimeraPantallaState createState() => _PrimeraPantallaState();
}

class _PrimeraPantallaState extends State<PrimeraPantalla> {
  TextEditingController _nombreController = TextEditingController();
  TextEditingController _apellidoController = TextEditingController();
  TextEditingController _edadController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Primera Pantalla'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              controller: _nombreController,
              decoration: InputDecoration(
                labelText: 'Nombre',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: _apellidoController,
              decoration: InputDecoration(
                labelText: 'Apellido',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: _edadController,
              decoration: InputDecoration(
                labelText: 'Edad',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Obtener datos del formulario
                String nombre = _nombreController.text;
                String apellido = _apellidoController.text;
                String edad = _edadController.text;

                // Navegar a la segunda pantalla y pasar los datos
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SegundaPantalla(
                        nombre: nombre,
                        apellido: apellido,
                        edad: edad,
                        dato: ''),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                primary:
                    const Color.fromARGB(255, 229, 33, 243), // background color
                onPrimary: Colors.white, // text color
              ),
              child: Text('Enviar'),
            ),
          ],
        ),
      ),
    );
  }
}
