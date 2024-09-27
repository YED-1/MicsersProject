import 'package:flutter/material.dart';

class songselect extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'SELECCIONA TUS CANCIONES',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            // Acción para regresar
            //En este caso se va navegar de vuelta a HomeScreen
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Botón de búsqueda en Spotify
                Row(
                  children: [
                    Icon(Icons.music_note, color: Colors.green), // Icono de Spotify
                    SizedBox(width: 5),
                    Text('Search', style: TextStyle(fontSize: 16)),
                  ],
                ),
                // Ícono de configuración
                Row(
                  children: [
                    Icon(Icons.search),
                    SizedBox(width: 10),
                    Icon(Icons.settings),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            // Lista de canciones
            Expanded(
              child: ListView.builder(
                itemCount: 10, // Aquí irán las canciones agregadas
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Checkbox(
                      value: false, // Valor que puede cambiar según la selección
                      onChanged: (bool? value) {
                        // Acción al seleccionar
                      },
                    ),
                    title: Text('Canción ${index + 1}'), // Aquí vendrá el nombre de la canción
                    trailing: IconButton(
                      icon: Icon(Icons.close),
                      onPressed: () {
                        // Acción para eliminar canción
                      },
                    ),
                  );
                },
              ),
            ),
            // Botón de Configuración de transiciones
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Acción para configurar transiciones
                  },
                  child: Text('Config. transiciones'),
                ),
                SizedBox(width: 10),
                // Botón de Empezar
                ElevatedButton(
                  onPressed: () {
                    // Acción para empezar la mezcla
                  },
                  child: Text('Empecemos!'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}