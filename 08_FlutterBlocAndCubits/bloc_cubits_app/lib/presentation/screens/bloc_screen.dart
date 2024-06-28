//? Este es la pantalla del Bloc - Esto será un Counter App

//Importaciones Flutter
import 'package:flutter/material.dart';
//Importaciones nuestras

//Creación de la pantalla para la navegación
class BlocScreen extends StatelessWidget {
  //Propieades

  //Constructor
  const BlocScreen({super.key});

  //Objeto
  @override
  Widget build(BuildContext context) {
    //Propiedades

    //!Widget Padre
    return Scaffold(
      //Colocamos una barra superior
      appBar: AppBar(
        title: const Center(child: Text('Bloc Counter')),
        actions: [
          //Coloamos un botón
          IconButton(
              //todo: Función
              onPressed: () {},
              //Icono
              icon: const Icon(Icons.refresh_rounded))
        ],
      ),
      //Cuerpo
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //Colocamos el texto del contador
          const Text('COUNTER VALUE',
              //Le agregamos un estilo
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.w800)),
          //todo : Número
          const Text('0',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.w300)),
          //Botónes
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //Botón Sumar
                FloatingActionButton(
                  //
                  heroTag: '1',
                  //todo: Función
                  onPressed: () {},
                  child: const Text('+1'),
                ),

                //Botón Sumar
                FloatingActionButton(
                  //
                  heroTag: '2',
                  //todo: Función
                  onPressed: () {},
                  child: const Text('+2'),
                ),

                //Botón Sumar
                FloatingActionButton(
                  //
                  heroTag: '3',
                  //todo: Función
                  onPressed: () {},
                  child: const Text('+3'),
                ),
              ],
            ),
          ),

          //Botón Refresh
          FloatingActionButton(
            //
            heroTag: '4',
            //todo: Función
            onPressed: () {},
            child: const Icon(Icons.refresh_rounded),
          ),
        ],
      )),

      //Botón Flotante
    );
  }
}
