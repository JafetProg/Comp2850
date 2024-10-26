import 'package:flutter/material.dart';
void main() 
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget 
{
  @override
  Widget build(BuildContext context) 
  {
    return MaterialApp(
    home: Scaffold(
    appBar: AppBar(
    title: Text('Mi Primera App en Flutter'),
   ),
    body: Center(
    child: Text('¡Hola, mundo!'),
        ),
      ),
    );
  }
}