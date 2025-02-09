import 'package:flutter/material.dart';
import 'package:lista_contatos/app/my_app.dart';

class ListContact extends StatelessWidget {
  const ListContact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de contatos'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, MyApp.CADASTRO);
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: ListView(),
    );
  }
}
