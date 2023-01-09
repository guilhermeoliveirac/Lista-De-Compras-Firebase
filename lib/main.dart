import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Lista de compras',
    theme: ThemeData(
      brightness: Brightness.dark,
      primarySwatch: Colors.blue,
      accentColor: Colors.orange,
    ),
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> compras = [];

  @override
  void initState() {
    super.initState();
    compras.add('macarrão');
    compras.add('Atum');
    compras.add('colve');
    compras.add('banana');
  }

  @override
  Widget build(BuildContext ctxt) {
    return Scaffold(
      //new
      appBar: AppBar(
        // new
        title: Text('LISTA DE COMPRAS'), //new
        centerTitle: true,
      ),
      body: new ListView.builder(
        itemCount: compras.length,
        //itemBuilder:(BuildContext (context, index) => Text(compras[index])),
        itemBuilder: (BuildContext ctxt, index) {
          return new Text(compras[index]);
        },
      ),
    );
  }
}
