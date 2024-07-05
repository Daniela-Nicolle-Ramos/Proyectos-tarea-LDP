import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GoogleAccountScreen(),
    );
  }
}

class GoogleAccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cuenta de Google'),
        leading: Container(), // Esto omite la "X"
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(0),
        child: Column(
          children: [
            Card(
             elevation: 0, 
             shape: RoundedRectangleBorder(
              side: BorderSide.none, 
            ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Tu cuenta está protegida', style: TextStyle(fontSize: 18)),
                              SizedBox(height: 4),
                              Text(
                                'La Verificación de seguridad revisó tu cuenta y no encontró acciones recomendadas.',
                                style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                              ),
                            ],
                          ),
                        ),
                        Icon(Icons.security, size: 70, color: Colors.green),
                      ],
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: TextButton(
                        onPressed: () {},
                        child: Text('Ver detalles', style: TextStyle(color: Colors.blue)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            
            Card(
              elevation: 0, 
             shape: RoundedRectangleBorder(
              side: BorderSide.none, 
            ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Verificación de privacidad', style: TextStyle(fontSize: 18)),
                              SizedBox(height: 4),
                              Text(
                                'Elige la configuración de privacidad indicada para ti con esta guía paso a paso.',
                                style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                              ),
                            ],
                          ),
                        ),
                        Icon(Icons.privacy_tip, size: 70, color: Colors.blue),
                      ],
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: TextButton(
                        onPressed: () {},
                        child: Text('Realizar la Verificación de privacidad', style: TextStyle(color: Colors.blue)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            
            Card(
              elevation: 0, 
             shape: RoundedRectangleBorder(
              side: BorderSide.none, 
            ),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.search, size: 25),
                    title: Text('Buscar en la Cuenta de Google'),
                     trailing: Icon(Icons.arrow_forward_ios, size: 16),
                    onTap: () {},
                  ),
                             
                  ListTile(
                    leading: Icon(Icons.help_outline, size: 25),
                    title: Text('Ver las opciones de ayuda'),
                    trailing: Icon(Icons.arrow_forward_ios, size: 16),
                    onTap: () {},
                   
                  ),
                  
                  ListTile(
                    leading: Icon(Icons.feedback, size: 25),
                    title: Text('Enviar comentarios'),
                    trailing: Icon(Icons.arrow_forward_ios, size: 16),
                    onTap: () {},
                  ),
                ],
              ),
            ),
            
            const Card(
              elevation: 0, 
             shape: RoundedRectangleBorder(
              side: BorderSide.none, 
            ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                   child: Text(
              'Solo tú puedes ver la configuración. También puedes revisar la configuración de Maps, la Búsqueda o cualquier servicio de Google que uses con frecuencia. Google protege la privacidad y la seguridad de tus datos.',
              style: TextStyle(fontSize: 14, color: Colors.grey),
              textAlign: TextAlign.left,
              ), 
            ),
            
            Icon(Icons.privacy_tip, size: 50, color: Colors.blue),
            ],
            ),
            ],
                ),
              ),
            ),

          ],
          
        ),
      ),
    );
  }
}
