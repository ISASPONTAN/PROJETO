import 'package:flutter/material.dart';

class PaginaTerceira extends StatefulWidget {
  const PaginaTerceira({super.key});
  @override
  State<PaginaTerceira> createState() => PaginaTerceiraState();
}

class PaginaTerceiraState extends State<PaginaTerceira> {
  var texto = "Centralizado";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aplicativo Isabela Spontan"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            texto = "qualquer";
          });
        },
        child: Icon(Icons.rocket),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Insira um texto',
            ),
          ),
          Text(
            texto,
            style: TextStyle(fontSize: 36),
          )
        ],
      ),
    );
  }
}
