// input_screen.dart
import 'package:flutter/material.dart';

class InputScreen extends StatefulWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  _InputScreenState createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  late TextEditingController inputController;
  String textoIngresado = ''; // Variable para almacenar el texto ingresado

  @override
  void initState() {
    inputController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Input Pantalla'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: inputController,
                decoration: InputDecoration(
                  labelText: 'Ingrese algo',
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  // Actualizar el texto cuando se presiona el botón "Aceptar"
                  setState(() {
                    textoIngresado = inputController.text;
                  });
                },
                child: Text('Aceptar'),
              ),
              SizedBox(height: 16),
              // Mostrar el texto ingresado debajo del botón
              Text(
                'Texto ingresado: $textoIngresado',
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

