import 'package:flutter/material.dart';
import 'mispantallas/inicio.dart';
import 'mispantallas/pantalla2.dart';
import 'mispantallas/pantalla3.dart';

void main() => runApp(const NetflixApp());

class NetflixApp extends StatelessWidget {
  const NetflixApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, scaffoldBackgroundColor: Colors.black),
      initialRoute: '/',
      routes: {
        '/': (context) => const InicioScreen(),
        '/login': (context) => const Pantalla2(),
        '/registro': (context) => const Pantalla3(),
      },
    );
  }
}

// Widget reutilizable para que todos los archivos lo usen
class RedInputField extends StatelessWidget {
  final String label;
  final IconData icon;
  final bool isPassword;
  const RedInputField({super.key, required this.label, required this.icon, this.isPassword = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(color: const Color(0xFFE50914), borderRadius: BorderRadius.circular(4)),
      child: TextField(
        obscureText: isPassword,
        style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        decoration: InputDecoration(
          prefixIcon: Icon(icon, color: Colors.white),
          labelText: label,
          labelStyle: const TextStyle(color: Colors.white),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(vertical: 15),
        ),
      ),
    );
  }
}