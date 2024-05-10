import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toktik_app/config/theme/app_theme.dart';
import 'package:toktik_app/presentation/providers/discover_provider.dart';
import 'package:toktik_app/presentation/screens/discover/discover_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //Instanciamos nuestro provider
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => DiscoverProvider())],
      child: MaterialApp(
        //Quitamos el Banner de Debug
        debugShowCheckedModeBanner: true,

        //Importamos nuestro theme para la aplicación
        theme: AppTheme().getTheme(),

        //Titulo de la aplicación
        title: 'TOK TIK',

        //Importamos nuestro HomeScreen
        home: const DiscoverScreen(),
      ),
    );
  }
}
