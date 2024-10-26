import 'package:flutter/material.dart';
void main() {
runApp(MyApp());
}
class MyApp extends StatelessWidget {
@override
Widget build(BuildContext context) { return MaterialApp(
home: ButtonScreen(),
);
} }
class ButtonScreen extends StatefulWidget {
@override
_ButtonScreenState createState() => _ButtonScreenState();
}
class _ButtonScreenState extends State<ButtonScreen> {
Color backgroundColor = Colors.white;
@override
Widget build(BuildContext context) { return Scaffold(
appBar: AppBar(
title: Text('Botones en Flutter'),
), body: Center( child: Column(
mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
ElevatedButton( onPressed: () {
print("ElevatedButton presionado");
}, child: Text('ElevatedButton'),
),
SizedBox(height: 10),
TextButton( onPressed: () { setState(() {
backgroundColor = Colors.blueAccent;
}); print("TextButton presionado - Color de fondo cambiado");
}, child: Text('TextButton'),
),
SizedBox(height: 10),
OutlinedButton( onPressed: () {
Navigator.push( context,
MaterialPageRoute(builder: (context) =>
NewScreen()), ); print("OutlinedButton presionado - Navegación a nueva pantalla");
}, child: Text('OutlinedButton'),
),
SizedBox(height: 10),
IconButton( icon: Icon(Icons.thumb_up), onPressed: () {
print("IconButton presionado - Acción rápida realizada");
},
),
],
), ), backgroundColor: backgroundColor,
);
} }
class NewScreen extends StatelessWidget {
@override
Widget build(BuildContext context) { return Scaffold(
appBar: AppBar(
title: Text('Nueva Pantalla'),
), body: Center(
child: Text('Has llegado a una nueva pantalla'), ),
);
}
}