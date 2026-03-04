import 'package:flutter/material.dart';
import '../main.dart';

class Pantalla3 extends StatelessWidget {
  const Pantalla3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black, title: const Text("Registro")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            const RedInputField(label: 'Usuario', icon: Icons.person),
            const RedInputField(label: 'Celular', icon: Icons.phone),
            const RedInputField(label: 'Correo electrónico', icon: Icons.mail),
            const RedInputField(label: 'Contraseña', icon: Icons.lock, isPassword: true),
            const RedInputField(label: 'Confirmar contraseña', icon: Icons.check_circle, isPassword: true),
            const SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFE50914),
                minimumSize: const Size(double.infinity, 55),
              ),
              onPressed: () {},
              child: const Text("CREAR CUENTA"),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Cancelar", style: TextStyle(color: Colors.white)),
            )
          ],
        ),
      ),
    );
  }
}