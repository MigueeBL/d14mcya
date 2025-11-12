import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:
          false, // Solo quito la etiqueta que se ve en la parte derecha de arriba al momento de ejcutar el emulador
      home: LoginPantalla(),
    );
  }
}

// Pantalla del login
class LoginPantalla extends StatelessWidget {
  const LoginPantalla({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(
        0xFFF4F4F4,
      ), // Para poner colores se usa al inicio 0XFF
      body: Column(
        children: [
          // Parte superior con título y logo
          Padding(
            padding: const EdgeInsets.only(top: 90.0, bottom: 20.0),
            child: Column(
              children: [
                // Título
                const Text(
                  'Hola! Bienvenido',
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 20),

                // Aquí irá el logo
                Image.asset(
                  'assets/images/logo.png',
                  width: 100,
                  height: 100,
                ),
                const SizedBox(height: 10),
                Text(
                  'D14 MCyA',
                  style: GoogleFonts.montserrat(
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                    fontStyle: FontStyle.italic,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 80),
              ],
            ),
          ),

          // Recuadro azul que ocupa el resto de la pantalla
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xFF1E4F6F),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              padding: const EdgeInsets.all(30),
              child: Column(
                children: [
                  // Aquí irá el contenido del formulario
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
