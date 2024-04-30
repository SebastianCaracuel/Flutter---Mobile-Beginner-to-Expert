import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //Creamos un Avatar circular
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://th.bing.com/th/id/OIP.mSbqR1SvIcywqzbh8VALSwHaHa?rs=1&pid=ImgDetMain'),
          ),
        ),
        //Titulo del mensaje
        title: const Text("Miles Morales 🕷️"),
      ),

      //Cuerpo
      body: const _ChatView(),
    );
  }
}

//Creamos el Widget de Forma privada para que solo este aquí y no en otra screen
class _ChatView extends StatelessWidget {
  const _ChatView();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            //Usamos un WIdget Expanded ( PERMITE expandir el widget hijo a todo el espacio disponible que el padre le de)
            Expanded(
                //Hijo
                child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return Text('Indice: $index');
              },
            )),

            //El otro espacio
            const Text("Teclado")
          ],
        ),
      ),
    );
  }
}
