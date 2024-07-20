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
    
      backgroundColor: Color.fromARGB(255, 237, 237, 237),
      appBar: AppBar(
        title: const Text('Inicio de Sesión'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        elevation: 30,
        foregroundColor: Colors.white,
      ),
         body: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
             Icon(Icons.person_2, size: 70, color: Colors.blue),
             SizedBox(height: 30.0),
              Card(
              elevation: 8,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
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
                     
                      controller: correoController,
                      decoration: InputDecoration(
                        suffix: const Icon(
                        Icons.email, size: 18,
                        color: Colors.blue,),                  
                        labelText: 'Correo',
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
                       ),
                      
                    ),
                    SizedBox(height: 13.0),
                    TextFormField(

                      controller: passwordController,
                      decoration: InputDecoration(
                        suffix: const Icon(
                       Icons.remove_red_eye, size: 18,
                        color: Colors.blue,),
                        labelText: 'Contraseña',
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),),
                      obscureText: true,
                    ),
                    SizedBox(height: 13.0),
                    ElevatedButton(
                      onPressed: () => login(context),
                      child: Text('Iniciar Sesión', style: TextStyle(fontSize: 14, color: Colors.blue),),
                        style: ElevatedButton.styleFrom(
                     backgroundColor: Color.fromARGB(255, 212, 229, 243),   

                    ),),

                  SizedBox(height: 5.0),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegistroScreen()),
                              
                        );
                      },
                      child: Text('Registrarse',style: TextStyle(fontSize: 14, color: Colors.blue)),
                       style: ElevatedButton.styleFrom(
                     backgroundColor: Color.fromARGB(255, 212, 229, 243),
                      ),
                                        
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
