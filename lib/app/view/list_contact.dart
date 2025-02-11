import 'package:flutter/material.dart';
import 'package:lista_contatos/app/database/sqlite/connection.dart';
import 'package:lista_contatos/app/my_app.dart';
import 'package:sqflite/sqflite.dart';

class ListContact extends StatelessWidget {
  const ListContact({super.key});

  @override
  Widget build(BuildContext context) {
    Future<List<Map<String, dynamic>>> _buscar() async {
      Database db = await Connection.get();

      return db.query('contacts');
    }

    return FutureBuilder(
      future: _buscar(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          var list = snapshot.data;

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
        } else {
          return Center(
            child: Text('Carregando... $CircularProgressIndicator'),
          );
        }
      },
    );
  }
}
