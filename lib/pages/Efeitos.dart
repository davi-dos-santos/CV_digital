import 'package:doglife/login_page.dart';
import 'package:doglife/pages/Atrasadas.dart';
import 'package:doglife/pages/Proxima_Vacina.dart';
import 'package:doglife/pages/aplicada.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Efeitos extends StatefulWidget {
  @override
  _EfeitosState createState() => _EfeitosState();
}

@override
State<StatefulWidget> createState() {
  // TODO: implement createState
  throw UnimplementedError();
}

class _EfeitosState extends State<Efeitos> {
  final navigationKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        navigatorKey: navigationKey,
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Efeitos'),
            actions: [
              PopupMenuButton<String>(onSelected: (value) {
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
