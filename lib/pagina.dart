import 'package:flutter/material.dart';

class Pagina extends StatelessWidget {
  const Pagina({super.key});
  @override
  Widget build(BuildContext context) {
    var estiloTexto = const TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text('Habemus Papa'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Texto da linha1 um pouco maior......",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Texto",
            style: estiloTexto,
          ),
          Text("Texto da linha3 um pouco maior.......", style: estiloTexto),
          Text(
            "Texto",
            style: estiloTexto,
          ),
          Text("Texto da linha5 um pouco maior........", style: estiloTexto),
          Text("Texto", style: estiloTexto),
          SizedBox(height: 32),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Texto1",
                style: estiloTexto,
              ),
              const SizedBox(width: 16),
              Text(
                "Texto2",
                style: estiloTexto,
              ),
              const SizedBox(width: 16),
              const Icon(Icons.rocket_launch_sharp),
              Text(
                "Texto3",
                style: estiloTexto,
              ),
              const SizedBox(width: 16),
              Text(
                "Texto4",
                style: estiloTexto,
              ),
              const SizedBox(width: 16),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  final snackBar = SnackBar(
                    content: const Text('Yay! A SnackBar!'),
                    action: SnackBarAction(
                      label: 'Undo',
                      onPressed: () {
// Some code to undo the change.
                      },
                    ),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                child: Text('Botão 1'),
              ),
              SizedBox(width: 16),
              ElevatedButton(
                onPressed: () {
                  final snackBar = SnackBar(
                    content: const Text('Yay! A SnackBar!'),
                    action: SnackBarAction(
                      label: 'Undo',
                      onPressed: () {
// Some code to undo the change.
                      },
                    ),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                child: Text('Botão 2'),
              ),
              SizedBox(width: 23),
              TextButton(
                onPressed: () {
                  final snackBar = SnackBar(
                    content: Row(
                      children: [
                        Text("chaculate"),
                      ],
                    ),
                    action: SnackBarAction(
                      label: 'Undo',
                      onPressed: () {
// Some code to undo the change.
                      },
                    ),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                child: Row(
                  children: [
                    Text("chaculate"),
                    Icon(Icons.settings),
                  ],
                ),
              ),
            ],
          ),
          Expanded(
            child: Center(
              child: Text(
                "Texto centralizado",
                style: estiloTexto,
              ),
            ),
          )
        ],
      ),
    );
  }
}
