import 'package:dailyplan/Peinados/showcases/noticias_showcase.dart';
import 'package:flutter/material.dart';

import 'reservas_showcase.dart';
import 'precios_showcase.dart';

class FriendShowcase extends StatefulWidget {

  _FriendShowcaseState createState() => new _FriendShowcaseState();
}

class _FriendShowcaseState extends State<FriendShowcase>
    with TickerProviderStateMixin {
  List<Tab> _tabs;
  List<Widget> _pages;
  TabController _controller;

  @override
  void initState() {
    super.initState();
    _tabs = [
      new Tab(text: 'Noticias'),
      new Tab(text: 'Precios'),
      new Tab(text: 'Reservas'),
    ];
    _pages = [
      new PortfolioShowcase(),
      new SkillsShowcase(),
      new Reservas(),
    ];
    _controller = new TabController(
      length: _tabs.length,
      vsync: this,
    );
  }

  Widget build(BuildContext context) {
    return new Padding(
      padding: const EdgeInsets.all(20),
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new TabBar(
            controller: _controller,
            tabs: _tabs,
            indicatorColor: Colors.white,
          ),
          new SizedBox.fromSize(
            size: const Size.fromHeight(2000),
            child: new TabBarView(
              controller: _controller,
              children: _pages,
            ),
          ),
        ],
      ),
    );
  }
}
