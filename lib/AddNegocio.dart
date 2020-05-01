import 'package:flutter/material.dart';

class addnegocio extends StatefulWidget {

  _addnegocioState createState() => _addnegocioState();
}

class _addnegocioState extends State<addnegocio> {

  Widget build(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Alert Dialog"),
            content: Text("Dialog Content"),
          );
        }
    );
  }
}
