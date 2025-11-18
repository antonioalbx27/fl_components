import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(//sale un boton en el cual se mostrara una alerta
          onPressed: (){

          }, 
          child: Text('Se mostro una alerta'))
        ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.wifi_calling_3_sharp),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}
