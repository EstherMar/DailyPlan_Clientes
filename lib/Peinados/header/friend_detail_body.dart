import 'package:flutter/material.dart';

class FriendDetailBody extends StatelessWidget {

  Widget _createCircleBadge(String imageasset) {
    return new Padding(
      padding: EdgeInsets.only(left: 23),
        child: Image.asset(imageasset, width: 50, height: 50),
        );
  }


  Widget build(BuildContext context) {

    return new Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        new Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _createCircleBadge("assets/images/facebookicon.png"),
              SizedBox (width: 52,),
              _createCircleBadge("assets/images/instagramicon.png"),
              SizedBox (width: 50,),
              _createCircleBadge("assets/images/twittericon.png"),
            ],
          ),
        ),
      ],
    );
  }
}
