import 'package:flutter/material.dart';
import 'songselect.dart'; // Importa el archivo songselect.dart ,selección de canciones 
import 'HomeScreen.dart'; // Importa el archivo HomeScreen.dart , Home screen

void main() {
  runApp(const MyApp());
  //runApp(const MyAppSongSelect());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Micsers',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      // Definimos las rutas para navegar entre pantallas
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(), // Ruta principal es HomeScreen
        '/songselect': (context) => songselect(), // Ruta para SongSelect
      },
    );
  }
}



//class MyAppSongSelect extends StatelessWidget {
  //const MyAppSongSelect({super.key});

  //@override
  //Widget build(BuildContext context) {
    //return MaterialApp(
      //title: 'SongSelect',
      //theme: ThemeData(
        //primarySwatch: Colors.blue,
        //useMaterial3: true,
      //),
      //home: songselect(), 
    //);
  //}
//}

