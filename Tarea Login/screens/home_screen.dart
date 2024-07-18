import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final String usuario;

  HomeScreen(this.usuario);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      appBar: AppBar(
        title: Text('Usuario', style: TextStyle(fontSize: 25)),
        
        centerTitle: true,
         backgroundColor: Colors.grey,),
          body:Scaffold(
            backgroundColor: Colors.grey,
            body: Center(
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
        
            children: [ 
             const CircleAvatar(
                    radius: 60,
                    backgroundImage: NetworkImage(
                        'https://pbs.twimg.com/profile_images/1787192097478529024/ASHLpCoC.jpg'),
              ),
                const Text('                '),
                
                Text(usuario, style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ),
    );
  }
}
