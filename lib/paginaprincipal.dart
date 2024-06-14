import 'package:aula/paginaSegunda.dart';
import 'package:flutter/material.dart';

class PaginaPrincipal extends StatelessWidget {
  const PaginaPrincipal({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text("Aplicativo da Isabela Spontan"),
      ),
      drawer: SafeArea(
        child: Drawer(
          child: ListView(
            children: const [
              UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  child: Icon(Icons.person),
                ),
                accountName: Text("Isabela Spontan"),
                accountEmail: Text("isabela.9903@aluno.pr.senac.br"),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://blog.sebastiano.dev/content/images/2019/07/1_l3wujEgEKOecwVzf_dqVrQ.jpeg"),
                      fit: BoxFit.fill),
                ),
              ),
              ListTile(
                leading: Icon(Icons.confirmation_num_sharp),
                title: Text("Título"),
                subtitle: Text("subtitulo"),
                trailing: Icon(Icons.arrow_right_sharp),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.add_call),
                title: Text("Título"),
                subtitle: Text("subtitulo"),
                trailing: Icon(Icons.arrow_right_sharp),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.zoom_out_map_outlined),
                title: Text("Título"),
                subtitle: Text("subtitulo"),
                trailing: Icon(Icons.arrow_right_sharp),
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const PaginaSegunda();
            }));
            print('botão pressionado');
          },
          child: Text('proxima pagina'),
        ),
      ),
    );
  }
}
