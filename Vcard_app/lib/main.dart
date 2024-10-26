import 'package:flutter/material.dart'; 
import 'package:google_fonts/google_fonts.dart'; void main() => runApp(VCardApp());
class VCardApp extends StatelessWidget {
@override
Widget build(BuildContext context) { return MaterialApp( title: 'V-Card',
theme: ThemeData(primarySwatch: Colors.blue), home: VCardScreen(),
);
}
}

class VCardScreen extends StatelessWidget {
@override
Widget build(BuildContext context) { return Scaffold(
appBar: AppBar(
title: const Text('Mi Tarjeta Digital'), centerTitle: true,
), backgroundColor: const Color(0xFFB2EBF2), body: Center(
child: Padding(
padding: const EdgeInsets.all(16.0), child: Container(
decoration: BoxDecoration(
color: Colors.white,
borderRadius: BorderRadius.circular(15), boxShadow: [
BoxShadow( color: Colors.grey.withOpacity(0.3), spreadRadius: 5, blurRadius: 7, offset: Offset(0, 3), // Desplazamiento de la sombra
),
], ), child: Padding( padding: const EdgeInsets.all(20.0), child: Column( mainAxisAlignment: MainAxisAlignment.center, children: [
CircleAvatar( radius: 50, backgroundImage:
AssetImage('assets/profile.jpg'), // Imagen del perfil
),
SizedBox(height: 20),
Text(
'Jafet R. Melendez Vidot', style: GoogleFonts.lato(fontSize: 28,
fontWeight: FontWeight.bold),
),
SizedBox(height: 10),
Text( 'jafetmelendez07@gmail.com', style: GoogleFonts.openSans(fontSize: 16),
),
SizedBox(height: 5),
Text(
'+7 (777) 777-7777', style: GoogleFonts.openSans(fontSize: 16),
),
SizedBox(height: 5),
Text( 'github.com/JafetProg', style: GoogleFonts.openSans(fontSize: 16,
color: Colors.blue), ),
SizedBox(height: 20),
// Código QR (puede ser una imagen estática o generada por un paquete QR)
Image.asset( 'assets/qrcode.png', width: 100, height: 100,
),
SizedBox(height: 20),
// Botón de Expansión (solo como ejemplo visual)
Row( mainAxisAlignment: MainAxisAlignment.center, children: [
Expanded( child: Text(
'Usuario de Github: JafetProg',
 style: GoogleFonts.openSans(fontSize:16),
  textAlign: TextAlign.center,
),
),
],
),
],
),
),
),
),
),
);
}
}
