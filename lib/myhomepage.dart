import'package:flutter/material.dart';
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text("Aplicativo da Isabela Spontan "
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final snackBar = SnackBar(
            content: const Text('Já está exibindo?????'
            ),
            action: SnackBarAction(
              label: 'Sim',
              textColor: Colors.pinkAccent,
              onPressed: () {
//
              },
            ),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: const Icon(Icons.add
        ),
      ),
      body: const Center(
        child: Text(
          "bom dia "
          ,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 40,
          ),
        ),
      ),
    );
  }
}