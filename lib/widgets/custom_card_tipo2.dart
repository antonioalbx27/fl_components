import 'package:flutter/material.dart';
class CustomCardTipo2 extends StatelessWidget {
  const CustomCardTipo2({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 50,
      child: Column(
        children: [
          FadeInImage(
            //foto buscada en internet
            image: NetworkImage('https://gaming-cdn.com/images/products/2419/orig/batman-arkham-knight-pc-juego-steam-cover.jpg?v=1703252478.jpg'),
            //por si la foto no carga; ponemos un gif(o otra cosa) descargada del pc hasta que cargue
            placeholder: AssetImage('assets/batman-arkham.gif'),
            width: double.infinity,
            height: 260,
            //fit recorta la imagen; o recortas o deformas
            fit: BoxFit.cover,
            )
            
            //https://i.imgur.com/Jf2UjMi.jpeg
        ],
      ),
    );
  }
}