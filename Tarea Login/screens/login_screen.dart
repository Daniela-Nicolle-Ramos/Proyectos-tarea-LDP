import 'package:flutter/material.dart';
import 'package:myapp/screens/registration_screen.dart';
import 'package:myapp/screens/home_screen.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final correoController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    void login(BuildContext context) {
      String correo = correoController.text.trim();
      String password = passwordController.text.trim();

      if (correo == "dnramosv@unah.hn" && password == "20191730054") {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen(correo)),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Correo o contraseña incorrectos')),
        );
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inicio de Sesión'),
        leading: Container(),
        backgroundColor: Colors.blue,
        elevation: 30,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              elevation: 8,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                side: const BorderSide(
                  color: Color.fromARGB(255, 116, 187, 246),
                  width: 2.0,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    TextFormField(
                      style: TextStyle(color: Colors.blue),
                      controller: correoController,
                      decoration: InputDecoration(labelText: 'Correo'),
                    ),
                    SizedBox(height: 13.0),
                    TextFormField(
                      controller: passwordController,
                      decoration: InputDecoration(labelText: 'Contraseña'),
                      obscureText: true,
                    ),
                    SizedBox(height: 13.0),
                    ElevatedButton(
                      onPressed: () => login(context),
                      child: Text('Iniciar Sesión'),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegistroScreen()),
                        );
                      },
                      child: Text('Registrarse'),

                      /// no funciona, aun no esta hecho el registro
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
