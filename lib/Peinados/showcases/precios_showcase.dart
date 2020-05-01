import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SkillsShowcase extends StatelessWidget {

  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: new Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              SizedBox (height: 30,),
                Container (
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    boxShadow: [BoxShadow(
                        color: Colors.black,
                        blurRadius: 10,
                        offset: Offset(6, 0))],
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),),
                  child: Column (
                    mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        SizedBox (height: 10,),
                        Container(
                          child: Text ("Cortes de Pelo",
                            style: TextStyle (
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 22
                            ),),
                        ),
                        SizedBox (height: 10,),
                        Text ("\t Déjate asesorar por nuestros profesionales para conseguir el look que más va contigo. Todos los servicios de corte, incluyen asesoramiento personalizado, lavado con champú y acabado",
                          textAlign: TextAlign.justify,
                          style: TextStyle (
                              color: Colors.black,
                              fontSize: 15
                          ),),
                        SizedBox (height: 20,),
                        Row (
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text ("Hombre",
                            textAlign: TextAlign.start,
                            style: TextStyle (
                              fontWeight: FontWeight.bold,
                              fontSize: 18
                            ),),
                            Text ("--",
                                textAlign: TextAlign.center,
                                style: TextStyle (
                                    fontSize: 15
                                )),
                            Text ("30 minutos",
                                textAlign: TextAlign.center,
                                style: TextStyle (
                                    fontSize: 15
                                )),
                            Text ("--",
                                textAlign: TextAlign.center,
                                style: TextStyle (
                                    fontSize: 15
                                )),
                            Text ("desde   9,95 €",
                                textAlign: TextAlign.end,
                                style: TextStyle (
                                    fontSize: 15
                                )),
                        ]),
                        Row (
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text ("Infantil",
                                textAlign: TextAlign.start,
                                style: TextStyle (
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18
                                ),),
                              Text ("--",
                                  textAlign: TextAlign.center,
                                  style: TextStyle (
                                      fontSize: 15
                                  )),
                              Text ("30 minutos",
                                  textAlign: TextAlign.center,
                                  style: TextStyle (
                                      fontSize: 15
                                  )),
                              Text ("--",
                                  textAlign: TextAlign.center,
                                  style: TextStyle (
                                      fontSize: 15
                                  )),
                              Text ("desde   8,00 €",
                                  textAlign: TextAlign.end,
                                  style: TextStyle (
                                      fontSize: 15
                                  )),
                            ]),
                        Row (
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text ("Mujer",
                                textAlign: TextAlign.start,
                                style: TextStyle (
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18
                                ),),
                              Text ("--",
                                  textAlign: TextAlign.center,
                                  style: TextStyle (
                                      fontSize: 15
                                  )),
                              Text ("45 minutos",
                                  textAlign: TextAlign.center,
                                  style: TextStyle (
                                      fontSize: 15
                                  )),
                              Text ("--",
                                  textAlign: TextAlign.center,
                                  style: TextStyle (
                                      fontSize: 15
                                  )),
                              Text ("desde  12,00 €",
                                  textAlign: TextAlign.end,
                                  style: TextStyle (
                                      fontSize: 15
                                  )),
                            ]),
                        SizedBox (height: 15,),
                      ]
                  )
                ),
              SizedBox (height: 30,),
                Container (
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    boxShadow: [BoxShadow(
                        color: Colors.black,
                        blurRadius: 10,
                        offset: Offset(6, 0))],
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),),
                  child: Column (
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        SizedBox (height: 10,),
                        Container(
                          child: Text ("Depilación",
                            style: TextStyle (
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 22
                            ),),
                        ),
                        SizedBox (height: 10,),
                        Text ("\t Disfruta de una piel suave, tersa y libre de vello por un par de semanas gracias a nuestros expertos esteticistas del salón Peinados. Vivirás la depilación de una forma diferente. También incluye la depilación de cejas según tu óvalo facial",
                          textAlign: TextAlign.justify,
                          style: TextStyle (
                              color: Colors.black,
                              fontSize: 15
                          ),),
                        SizedBox (height: 20,),
                        Row (
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text ("Cejas y labio",
                                textAlign: TextAlign.start,
                                style: TextStyle (
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18
                                ),),
                              Text ("--",
                                  textAlign: TextAlign.center,
                                  style: TextStyle (
                                      fontSize: 15
                                  )),
                              Text ("15 minutos",
                                  textAlign: TextAlign.center,
                                  style: TextStyle (
                                      fontSize: 15
                                  )),
                              Text ("--",
                                  textAlign: TextAlign.center,
                                  style: TextStyle (
                                      fontSize: 15
                                  )),
                              Text ("desde   5,00 €",
                                  textAlign: TextAlign.end,
                                  style: TextStyle (
                                      fontSize: 15
                                  )),
                            ]),
                        SizedBox (height: 15,),
                      ]
                  )
              ),
            ]
        )
      ),
    );
  }
}
