import 'package:doglife/login_page.dart';
import 'package:doglife/pages/Vacinas.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class cadastro extends StatefulWidget {
  @override
  _cadastroState createState() => _cadastroState();
}

class _cadastroState extends State<cadastro> {
  String nome = '';
  String endereco = '';
  String sexo = '';
  String tipsangue = '';
  String cpf = '';
  String senha = '';
  String title = 'DopDownButton';
  List _sexo = ['Masculino', 'Feminino'];
  List tipo_sanguineo = ['A+', 'A-', 'B+', 'B-', 'AB+', 'AB-', 'O+' 'O-'];

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
                    nome = text;
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "Nome:",
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
                    endereco = text;
                  },
                  decoration: InputDecoration(
                    labelText: "Endereço",
                    labelStyle: TextStyle(),
                  ),
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 2,
                ),
                TextFormField(
                  onChanged: (text) {
                    sexo = text;
                  },
                  decoration: InputDecoration(
                    labelText: "Sexo",
                    labelStyle: TextStyle(),
                  ),
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 2,
                ),
                TextFormField(
                  onChanged: (text) {
                    tipsangue = text;
                  },
                  decoration: InputDecoration(
                    labelText: "Tipos Sanguíneo",
                    labelStyle: TextStyle(),
                  ),
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 2,
                ),
                TextFormField(
                  onChanged: (text) {
                    cpf = text;
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "CPF",
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
                    senha = text;
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Senha",
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),
                  ),
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 15,
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
                                builder: (BuildContext context) =>
                                    LoginPage()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "    Sair",
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
                        if (nome != '' &&
                            endereco != '' &&
                            sexo != '' &&
                            tipsangue != '' &&
                            cpf != '' &&
                            senha != '') {
                          print("Próximo $nome ");
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      vacinas()));
                        } else {
                          print("Falta dados");
                        }
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Próximo",
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
