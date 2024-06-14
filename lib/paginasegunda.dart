import'package:flutter/material.dart';
class PaginaSegunda extends StatelessWidget {
  const PaginaSegunda({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text("Aplicativo da Isabela Spontan"
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
            print('botão pressionado'
            );
          },
          child: Text('segunda pagina'
          ),
        ),
      ),
    );
  }
}