import 'package:flutter/material.dart';

class RegistroScreen extends StatefulWidget {

  RegistroScreen({super.key});

  @override
  State<RegistroScreen> createState() => _RegistroScreenState();
}

class _RegistroScreenState extends State< RegistroScreen> {
  TextEditingController nombreController = TextEditingController();

  TextEditingController correoController = TextEditingController();

  TextEditingController telefonoController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmarPasswordController = TextEditingController();

  void _register() {
    
    String nombre = nombreController.text.trim();
    String correo = correoController.text.trim();
    String telefono = telefonoController.text.trim();
    String password = passwordController.text.trim();
    String confirmarPassword = confirmarPasswordController.text.trim();

    
    if (nombre.length < 3 || nombre.length > 10) {
      print('Nombre debe tener entre 3 y 10 caracteres');
      return;
    }
    if (!correo.contains('@') || !correo.endsWith('.edu.hn')) {
      print('Correo inválido');
      return;
    }
    if (!(telefono.startsWith('3') || telefono.startsWith('9')) || telefono.length != 8) {
      print('Teléfono inválido');
      return;
    }
    if (password.length < 8 || !password.contains(RegExp(r'[A-Z]')) || !password.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      print('Contraseña inválida');
      return;
    }
    if (password != confirmarPassword) {
      print('Las contraseñas no coinciden');
      return;
    }    
    print('Nombre: $nombre');
    print('Correo: $correo');
    print('Teléfono: $telefono');
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Registro')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: nombreController,
              decoration: InputDecoration(labelText: 'Nombre'),
            ),
            TextFormField(
              controller: correoController,
              decoration: InputDecoration(labelText: 'Correo'),
            ),
            TextFormField(
              controller: telefonoController,
              decoration: InputDecoration(labelText: 'Teléfono'),
            ),
            TextFormField(
              controller: passwordController,
              decoration: InputDecoration(labelText: 'Contraseña'),
              obscureText: true,
            ),
            TextFormField(
              controller: confirmarPasswordController,
              decoration: InputDecoration(labelText: 'Confirmar Contraseña'),
              obscureText: true,
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: _register,
              child: Text('Registrarse'),
            ),
          ],
        ),
      ),
    );
  }
}
