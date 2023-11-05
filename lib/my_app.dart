// my_app.dart
import 'package:flutter/material.dart';
import 'my_home_page.dart';  // Importa la clase MyHomePage desde otro archivo
import 'input_screen.dart';  // Importa la clase InputScreen desde otro archivo
import 'adivina_numero.dart';  // Importa la clase AdivinaNumeroScreen desde otro archivo

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/', // Ruta inicial
      routes: {
        '/': (context) => const MyHomePage(title: 'Flutter Demo Home Page'),
        '/adivina': (context) => const AdivinaNumeroScreen(),
      },
    );
  }
}
