import 'package:flutter/material.dart';

class AdivinaNumeroScreen extends StatelessWidget {
  const AdivinaNumeroScreen({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green, // Color verde para la AppBar
        title: Text('Adivina el Número'), // Título personalizado
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: 200,
            height: 200,
            child: Image.asset('assets/images/Caratula.jpeg'),
          ),
          const Text(
            'Bienvenido a Adivina el Número:',
          ),
        ],
      ),
    );
  }
}

