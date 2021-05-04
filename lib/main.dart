import 'package:flutter/material.dart';

void main() => runApp(Sanchezapp());

class Sanchezapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: EsScaffold(title: 'Flutter en español sanchez'),
    ); //Fin de material
  } //Fin de widget
} //Fin de Sanchezapp

class EsScaffold extends StatefulWidget {
  EsScaffold({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _EsScaffoldState createState() => _EsScaffoldState();
} //fin de EsScaffold

class _EsScaffoldState extends State<EsScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ), //fin de appbar
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset(
          'assets/FlutterEnEspanol.jpg',
          width: 200.0,
        ), //fin de imagen
      ), //fin de body
      drawer: Drawer(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          FlutterLogo(size: 100.0),
          Text('Drawer 1 por sanchez'),
        ] //fin de children
            ), //fin de child
      ), // fin de drawer
      endDrawer: Drawer(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          FlutterLogo(size: 100.0),
          Text('Drawer 2 por sanchez'),
        ] //fin de children
            ), //fin de child
      ), // fin de drawe
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.favorite),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return Container(
                height: 200.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlutterLogo(
                      size: 100.0,
                    ),
                    Text('Botton sheet el sanchez'),
                  ],
                ),
              ); //fin del contenedor
            }, //fin de builder
          ); // fin de sheet
        }, //fin de onpressed
      ), //button flotante
      bottomNavigationBar: BottomAppBar(
        color: Colors.red,
        child: Container(
          height: 50.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FlutterLogo(
                size: 30.0,
              ),
              Text(' Sanchez BottomAppBar')
            ],
          ),
        ),
      ), //fin de BottomAppBar
    ); //fin de Scaffold
  } //fin de Widget construir
} //fin de state<EsScaffold>
