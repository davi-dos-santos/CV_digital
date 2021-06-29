import 'package:doglife/login_page.dart';
import 'package:doglife/pages/Atrasadas.dart';
import 'package:doglife/pages/efeitos.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Proxima_Vacina extends StatefulWidget {
  @override
  _Proxima_VacinaState createState() => _Proxima_VacinaState();
}

@override
State<StatefulWidget> createState() {
  // TODO: implement createState
  throw UnimplementedError();
}

class _Proxima_VacinaState extends State<Proxima_Vacina> {
  final navigationKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        navigatorKey: navigationKey,
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Aplicadas'),
            actions: <Widget>[
              PopupMenuButton(onSelected: (value) {
                print(value);
              }, itemBuilder: (BuildContext contesxt) {
                return [
                  PopupMenuItem(
                    value: "Aplicadas",
                    child: Text("Aplicadas"),
                  ),
                  PopupMenuItem(
                    value: "Efeitos",
                    child: Text("Efeitos"),
                  ),
                  PopupMenuItem(
                    value: "Proximas Vacinas",
                    child: Text("Proximas Vacinas"),
                  ),
                  PopupMenuItem(
                    value: "Atrasadas",
                    child: Text("Atrasadas"),
                  ),
                  PopupMenuItem(
                    value: "Sair",
                    child: Text("Sair"),
                  ),
                ];
                onSelected:
                (int menu) {
                  if (menu == 1) {
                    navigationKey.currentState.push(
                        MaterialPageRoute(builder: (context) => Efeitos()));
                  } else if (menu == 2) {
                    navigationKey.currentState.push(
                        MaterialPageRoute(builder: (context) => Efeitos()));
                  } else if (menu == 3) {
                    navigationKey.currentState.push(MaterialPageRoute(
                        builder: (context) => Proxima_Vacina()));
                  } else if (menu == 4) {
                    navigationKey.currentState.push(
                        MaterialPageRoute(builder: (context) => Atrasadas()));
                  } else if (menu == 5) {
                    navigationKey.currentState.push(
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  }
                };
              })
            ],
          ),
        ));
  }
}

class Vida extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Center(
        child: Center(
          child: Column(
            children: <Widget>[
              RaisedButton(
                child: Text("Efeitos 1"),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Efeitos()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
