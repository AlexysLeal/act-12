import 'package:flutter/material.dart';
import '../main.dart'; // Importante para usar el RedInputField

class Pantalla2 extends StatelessWidget {
  const Pantalla2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Inicio de Sesión", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
            const SizedBox(height: 25),
            const RedInputField(label: 'Correo electrónico', icon: Icons.email),
            const RedInputField(label: 'Contraseña', icon: Icons.lock, isPassword: true),
            const SizedBox(height: 20),
            _botonPersonalizado("INICIAR SESIÓN", Colors.blue[800]!, () {}),
            _botonPersonalizado("REGISTRARSE", Colors.green[700]!, () {
              Navigator.pushNamed(context, '/registro');
            }),
          ],
        ),
      ),
    );
  }

  Widget _botonPersonalizado(String t, Color c, VoidCallback f) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: c, padding: const EdgeInsets.all(15)),
        onPressed: f,
        child: Text(t),
      ),
    );
  }
}