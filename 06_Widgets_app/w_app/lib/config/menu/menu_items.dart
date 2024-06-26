import 'package:flutter/material.dart';
//Creamos un archivo para el menu

//Creamos una clase

class MenuItem {
  //PROPIEDADES
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

//Constructor con los parametros
  const MenuItem(
      {required this.title,
      required this.subTitle,
      required this.link,
      required this.icon});
}

//Creamos una constante del menuItems
const appMenuItems = <MenuItem>[
  //todo: Noveno Widgets a utilizar - Counter Screen + Riverpod //?Pasamos este arriba
  MenuItem(
      title: 'Counter Screen',
      subTitle: 'Riverpod +  contador.',
      link: '/counter',
      icon: Icons.plus_one_rounded),

  //Primer Widgets a utilizar - Botones
  MenuItem(
      title: 'Botones',
      subTitle: 'Varios Botones en Flutter',
      link: '/buttons',
      icon: Icons.smart_button_outlined),

  //Segundo Widgets a utilizar - Tarjetas
  MenuItem(
      title: 'Tarjetas',
      subTitle: 'Un contenedor estilizado',
      link: '/cards',
      icon: Icons.credit_card),

  //Tercer Widgets a utilizar - ProgressIndicators
  MenuItem(
      title: 'Progress Indicators',
      subTitle: 'Generales y controlados',
      link: '/progress',
      icon: Icons.refresh_rounded),

  //Cuarto Widgets a utilizar - Snackbars
  MenuItem(
      title: 'SnackBars and Dialogs',
      subTitle: 'Indicadores en pantalla',
      link: '/snackbars',
      icon: Icons.info_outline_rounded),

  //  Quinto Widgets a utilizar - Animated Container
  MenuItem(
      title: 'Animated container',
      subTitle: 'Stateful widget animado',
      link: '/animated',
      icon: Icons.check_box_outline_blank_rounded),

  //  Sexto Widgets a utilizar - Ui Control
  MenuItem(
      title: 'UI Controls + Titles',
      subTitle: 'Serie de controles de Flutter',
      link: '/ui-controls',
      icon: Icons.car_rental_rounded),

  //  Septimo Widgets a utilizar - Tutorial
  MenuItem(
      title: 'Introduction to the application',
      subTitle: 'Esta es una introducción a la aplicación',
      link: '/tutorial',
      icon: Icons.menu_book_sharp),

  //  Octavo Widgets a utilizar - Infinite Scroll
  MenuItem(
      title: 'InfiniteScroll and Pull Refresh',
      subTitle: 'Listas infinitas y tirar para refrescar.',
      link: '/infinite',
      icon: Icons.list_alt_rounded),

//  Decimo Widgets a utilizar - Theme Changer
  MenuItem(
      title: 'Theme Changer',
      subTitle: 'Cambiar el tema de la aplicación.',
      link: '/theme-changer',
      icon: Icons.palette_rounded),
];
