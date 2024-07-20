import 'package:flutter/material.dart';

class RegistroScreen extends StatefulWidget {
  RegistroScreen({super.key});

  @override
  State<RegistroScreen> createState() => _RegistroScreenState();
}

class _RegistroScreenState extends State<RegistroScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController nombreController = TextEditingController();
  TextEditingController correoController = TextEditingController();
  TextEditingController telefonoController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmarPasswordController = TextEditingController();

  void _registro() {
    if (_formKey.currentState?.validate() ?? false) {
      String nombre = nombreController.text.trim();
      String correo = correoController.text.trim();
      String telefono = telefonoController.text.trim();
      String password = passwordController.text.trim();
     

      print('Nombre: $nombre');
      print('Correo: $correo');
      print('Teléfono: $telefono');
      print('Contrase: $password');
      
    }
  }

  String? _validateNombre(String? value) {
    if (value == null || value.isEmpty) {
      return 'El nombre es obligatorio';
    }
    if (value.length < 3) {
      return 'Nombre debe tener mas de 3 caracteres';
    }
    return null;
  }

  String? _validateCorreo(String? valor) {
    if (valor == null || valor.isEmpty) {
      return 'El correo es obligatorio';
    }
    if (!valor.contains('@') || !valor.endsWith('.edu.hn')) {
      return 'Correo inválido';
    }
    return null;
  }

  String? _validateTelefono(String? value) {
    if (value == null || value.isEmpty) {
      return 'El teléfono es obligatorio';
    }
    if (!(value.startsWith('3') || value.startsWith('9')) ||
        value.length != 8) {
      return 'Teléfono inválido';
    }
    return null;
  }

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'La contraseña es obligatoria';
    }
    if (value.length < 8 || !value.contains(RegExp(r'[A-Z]')) || !value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      return 'Contraseña inválida';
    }
    return null;
  }

  String? _validateConfirmarPassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'La confirmación de la contraseña es obligatoria';
    }
    if (value != passwordController.text) {
      return 'Las contraseñas no coinciden';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color.fromARGB(255, 231, 231, 231),
        appBar: AppBar(title: Text('Registro'),
        backgroundColor: Colors.grey,
        elevation: 30,
        foregroundColor: Colors.black,),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                Icon(Icons.info, size: 70, color: Color.fromARGB(255, 116, 60, 154)),
                 SizedBox(height: 30.0),
                SizedBox(height: 13.0),

              TextFormField(
                controller: nombreController,
                decoration: InputDecoration(labelText: 'Nombre', 
                suffix:Icon(
                       Icons.person, size: 18,
                        color: Color.fromARGB(255, 116, 60, 154),),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),),
                validator: _validateNombre,
              ),
              SizedBox(height: 13.0),
              TextFormField(
                controller: correoController,
                decoration: InputDecoration(labelText: 'Correo',
                suffix:Icon(
                       Icons.email, size: 18,
                        color: Color.fromARGB(255, 116, 60, 154),),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),),
                validator: _validateCorreo,
              ),
              SizedBox(height: 13.0),
              TextFormField(
                controller: telefonoController,
                decoration: InputDecoration(labelText: 'Teléfono',  
                suffix:Icon(
                       Icons.phone, size: 18,
                        color: Color.fromARGB(255, 116, 60, 154),),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),),
                validator: _validateTelefono,
              ),
              SizedBox(height: 13.0),
              TextFormField(
                controller: passwordController,
                decoration: InputDecoration(labelText: 'Contraseña',
                suffix:Icon(
                       Icons.remove_red_eye, size: 18,
                        color: Color.fromARGB(255, 116, 60, 154),),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),),
                obscureText: true,
                validator: _validatePassword,
              ),
              SizedBox(height: 13.0),
              TextFormField(
                controller: confirmarPasswordController,
                decoration: InputDecoration(labelText: 'Confirmar Contraseña', 
                suffix:Icon(
                       Icons.remove_red_eye_outlined, size: 18,
                        color: Color.fromARGB(255, 116, 60, 154),), 
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(16))),
                obscureText: true,
                validator: _validateConfirmarPassword,
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: _registro,
               child: Text('Registrarse',style: TextStyle(fontSize: 14, color: Colors.black)),
                       style: ElevatedButton.styleFrom(
                     backgroundColor: Color.fromARGB(255, 204, 209, 213),
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
