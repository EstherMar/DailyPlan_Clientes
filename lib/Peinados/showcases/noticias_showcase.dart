import 'package:flutter/material.dart';

class PortfolioShowcase extends StatelessWidget {
  List<Widget> _buildItems() {
    var items = <Widget>[];

    for (var i = 1; i <= 1; i++) {
      var image = new Image.asset(
        'assets/images/ofertauñas.jpg',
      );

      items.add(image);
    }

    return items;
  }

  Widget build(BuildContext context) {
    var delegate = new SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 1,
      crossAxisSpacing: 10.0,
      mainAxisSpacing: 10.0,
    );

    return new GridView(
      padding: const EdgeInsets.only(top: 20.0),
      gridDelegate: delegate,
      children: _buildItems(),
    );
  }
}


