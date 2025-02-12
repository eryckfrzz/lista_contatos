import 'package:flutter/material.dart';
import 'package:lista_contatos/app/view/form_contact.dart';
import 'package:lista_contatos/app/view/list_contact.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const HOME = '/';
  static const CADASTRO = '/cadastro';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => ListContact(),
        '/cadastro': (context) => ContactForm()
      },
    );
  }
}
