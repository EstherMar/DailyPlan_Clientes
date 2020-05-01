import 'package:flutter/material.dart';

class ActiveProjectsCard extends StatelessWidget {
  final String cardimage;
  final Color cardColor;
  final double loadingPercent;
  final String title;
  final String subtitle;
  final  Widget paginaprivada;

  ActiveProjectsCard({
    this.cardimage,
    this.cardColor,
    this.loadingPercent,
    this.title,
    this.subtitle,
    this.paginaprivada,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => paginaprivada));
        },
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 10.0),
          padding: EdgeInsets.all(15.0),
          height: 200,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage (cardimage),
                fit: BoxFit.cover
            ),
            borderRadius: BorderRadius.circular(40.0),
            boxShadow: [BoxShadow(
              color: Colors.black54,
              blurRadius: 12,
              offset: Offset(6, 6),
            )]
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 50,),
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.yellow,
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 50,),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
