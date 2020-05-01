import 'package:dailyplan/Peinados/showcases/friend_detail_footer.dart';
import 'package:flutter/material.dart';
import 'header/friend_detail_body.dart';
import 'header/friend_detail_header.dart';

class PeluqueriaPeinados extends StatefulWidget {


  _PeluqueriaPeinadosState createState() => new _PeluqueriaPeinadosState();
}

class _PeluqueriaPeinadosState extends State<PeluqueriaPeinados> {

  Widget build(BuildContext context) {

    return new Scaffold(
      body: new Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.purple[600],
              Colors.purple[700],
              Colors.purple[800],
              Colors.purple[900],
            ],
            stops: [0.1, 0.4, 0.7, 0.9],
          ),
        ),
        child: SingleChildScrollView(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              new FriendDetailHeader(),
               new FriendDetailBody(),
              new FriendShowcase(),
            ],
          ),
        ),
      ),
    );
  }
}
