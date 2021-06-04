import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class aplicada extends StatefulWidget {
  @override
  _aplicadaState createState() => _aplicadaState();
}

class _aplicadaState extends State<aplicada> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Vacinas Aplicadas'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  get choiceAction => null;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
        actions: <Widget>[
          //PopupMenuButton<String>(
          //  onSelected: choiceAction,
          //  itemBuilder: (BuildContext context) {
          //    return Constants.choice.map((String choice) {
          //      return PopupMenuItem<String>(
          //        value: choice,
          //        child: Text(choice),
          //      );
          //    }).toList();
          //  },
          //)
        ],
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              'Vacinas Aplicadas',
            ),
          ],
        ),
      ),
    );
  }
}

class Constants {}

//  void choiceAction(String choice){
//    if(choice == Constants.Settings){
//      print('Settings');
//    }else if(choice == Constants.Subscribe){
//      print('Subscribe');
//    }else if(choice == Constants.SignOut){
//      print('SignOut');
//    }
//  }
//}

//class Constants {
//
