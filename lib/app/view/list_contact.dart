import 'package:flutter/material.dart';
import 'package:lista_contatos/app/my_app.dart';

class ListContact extends StatelessWidget {
  ListContact({super.key});

  final list = [
    {
      "nome": "Maria",
      "telefone": "(85) 4002-8922",
      "avatar":
          "https://cdn.pixabay.com/photo/2014/04/03/10/32/user-310807_1280.png",
    },
    {
      "nome": "Ana",
      "telefone": "(85) 4002-8922",
      "avatar":
          "https://cdn.pixabay.com/photo/2014/04/02/17/07/user-307993_1280.png",
    },
    {
      "nome": "Alex",
      "telefone": "(85) 4002-8922",
      "avatar":
          "https://cdn.pixabay.com/photo/2018/08/28/12/41/avatar-3637425_1280.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Lista de contatos',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, MyApp.CADASTRO);
            },
            icon: Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          var contact = list[index];
          var avatar = CircleAvatar(
            backgroundImage: NetworkImage(
              contact['avatar']!,
            ),
          );

          return ListTile(
            title: Text(
              contact['nome']!,
            ),
            subtitle: Text(
              contact['telefone']!,
            ),
            leading: avatar,
            trailing: SizedBox(
              width: 100,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.edit),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.delete),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
