import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BtnListScreen(),
    );
  }
}

class BtnListScreen extends StatelessWidget {
  final List<String> btnNames = ["Botão 1", "Botão 2", "Botão 3"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de Botões"),
      ),
      body: ListView.builder(
        itemCount: btnNames.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(btnNames[index]),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SecondScreen(btnNames[index]);
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  final String btnName;

  SecondScreen(this.btnName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela 2"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("A opção escolhida foi:"),
            Text(
              btnName,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}
