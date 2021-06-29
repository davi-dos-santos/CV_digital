import 'package:doglife/pages/Aplicada.dart';
import 'package:doglife/pages/cadastro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class vacinas extends StatefulWidget {
  @override
  _vacinasState createState() => _vacinasState();
}

class _vacinasState extends State<vacinas> {
  String vacina = '';
  String data = '';
  String venc = '';

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 100,
                  height: 100,
                  child: Image.asset("assets/livro.png"),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  onChanged: (text) {
                    vacina = text;
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "Vacina:",
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),
                  ),
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 2,
                ),
                TextFormField(
                  onChanged: (text) {
                    data = text;
                  },
                  decoration: InputDecoration(
                    labelText: "Data:",
                    labelStyle: TextStyle(),
                  ),
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 2,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Lote:",
                    labelStyle: TextStyle(),
                  ),
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 2,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Fab:",
                    labelStyle: TextStyle(),
                  ),
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 2,
                ),
                TextFormField(
                  onChanged: (text) {
                    venc = text;
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Venc:",
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),
                  ),
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 109,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Color(0xFF303F9F),
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  child: new Center(
                    child: FlatButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) => cadastro()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "   Voltar",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Container(
                  width: 109,
                  height: 40,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    color: Color(0xFF303F9F),
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  child: SizedBox.expand(
                    child: FlatButton(
                      onPressed: () {
                        if (vacina != '' && data != '' && venc != '') {
                          print("Concluir $vacina ");

                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      Aplicadas()));
                        } else {
                          print("Falta dados");
                        }
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Concluir",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
