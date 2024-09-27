import 'package:flutter/material.dart';
// import 'songselect.dart'; Por ahora no vamos usar la importación ya que se definen las rutas en el main 

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/Logo.png',
                    height: 170,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'MICSERS',
                    style: TextStyle(
                      fontFamily: 'OrganettoCndBold',
                      fontSize: 60,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: 300,
                    child: ElevatedButton(
                      onPressed: () {
                        // Redirige a la pantalla de selección de canciones
                        Navigator.pushNamed(context, '/songselect'); 

                        // Redirige a la pantalla de selección de canciones
                        //Navigator.push(
                          //context,
                          //MaterialPageRoute(
                            //builder: (context) => songselect(),
                          //),
                        //);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/Spotify.png',
                            width: 50,
                            height: 50,
                          ),
                          const SizedBox(width: 15),
                          const Text(
                            'Login',
                            style: TextStyle(
                              fontSize: 30,
                              color: Color(0xFF1DB954),
                              fontFamily: 'OrganettoCndBold',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 20.0), // Ajusta el padding para que el texto esté centrado al final
            child: Text(
              'MEZCLAR MUSICA NUNCA FUE TAN FACIL',
              style: TextStyle(
                fontFamily: 'OrganettoBold',
                fontSize: 17,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}