import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dailyplan/calendar_page.dart';
import 'package:dailyplan/widgets/task_column.dart';
import 'package:dailyplan/widgets/active_project_card.dart';
import 'package:dailyplan/widgets/top_container.dart';
import 'Otrapagina.dart';
import 'Peinados/PeluqueriaPeinados.dart';


class Principal extends StatelessWidget {

  Text subheading(String title) {
    return Text(
      title,
      style: TextStyle(
          color: Colors.green[700],
          fontSize: 20.0,
          fontWeight: FontWeight.w700,
          letterSpacing: 1.2),
    );
  }

  static CircleAvatar calendarIcon() {
    return CircleAvatar(
      radius: 25.0,
      backgroundColor: Colors.green[700],
      child: Icon(
        Icons.calendar_today,
        size: 30.0,
        color: Colors.white,
      ),
    );
  }

  static CircleAvatar AddIcon() {
    return CircleAvatar(
      radius: 25.0,
      backgroundColor: Colors.green[700],
      child: Icon(
        Icons.add,
        size: 30.0,
        color: Colors.white,
      ),
    );
  }

  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(
      backgroundColor: Color.fromRGBO(69, 100, 120, .8),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.blue[300],
              Colors.blue[200],
              Colors.blue[100],
              Colors.blue[50],
            ],
            stops: [0.1, 0.4, 0.7, 0.9],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              TopContainer(
                height: 150,
                width: width,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Icon(Icons.menu,
                              color: Colors.white, size: 30.0),
                          Icon(Icons.search,
                              color: Colors.white, size: 25.0),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 0, vertical: 0.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              width: 90,
                              height: 90,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/fotoperfil.png"),
                                    fit: BoxFit.cover
                                ),
                              ),
                            ),

                            Text(
                              'Esther Martin',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 22.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      )
                    ]),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Container(
                        color: Colors.transparent,
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 10.0),
                        child: Column(
                          children: <Widget>[
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                subheading('Mis citas de hoy'),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => CalendarPage()),
                                    );
                                  },
                                  child: calendarIcon(),
                                ),
                              ],
                            ),
                            SizedBox(height: 15.0),
                            TaskColumn(
                              icon: Icons.fitness_center,
                              iconBackgroundColor: Colors.yellow,
                              title: 'Box Castellon',
                              subtitle: '10:00 a 12:00 horas',
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            TaskColumn(
                              icon: Icons.local_cafe,
                              iconBackgroundColor: Colors.deepPurple,
                              title: 'Café con Erika',
                              subtitle: '14:00 a 15:30 horas',
                            ),
                            SizedBox(height: 15.0),
                            TaskColumn(
                              icon: Icons.filter_vintage,
                              iconBackgroundColor: Colors.pink,
                              title: 'Peluqueria Peinados',
                              subtitle: '16:00 a indefinido horas',
                            ),
                          ],
                        ),
                      ),
                      Container(
                        color: Colors.transparent,
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceBetween,
                                children: <Widget>[
                                  subheading('Mis establecimientos'),
                                  GestureDetector(
                                      onTap: () {
                                        showDialog(
                                            context: context,
                                            builder: (BuildContext context){
                                              return AlertDialog(
                                                  actions: <Widget>[
                                                    FlatButton(
                                                      child: const Text("Añadir"),
                                                      onPressed: () {},
                                                    ),
                                                  ],
                                                title: Text("Añade tu nuevo código de establecimiento",
                                                textAlign: TextAlign.center,),
                                                content: TextFormField(
                                                  maxLength: 10,
                                                  textAlign: TextAlign.center,
                                                  decoration: const InputDecoration(
                                                    hintText: 'Ej: 78VX16-BZ123',),)
                                              );
                                            }
                                        );
                                      },
                                      child: AddIcon(),)]),
                            SizedBox(height: 5.0),
                            Row(
                              children: <Widget>[
                                ActiveProjectsCard(
                                  cardimage: ("assets/images/peinados.png"),
                                  loadingPercent: 0.25,
                                  title: 'Peluqueria Peinados',
                                  subtitle: 'Plaça del Cometa Halley, 4 - 12005 Castelló de la Plana',
                                  paginaprivada: PeluqueriaPeinados(),
                                ),
                                SizedBox(width: 20.0),
                                ActiveProjectsCard(
                                  cardimage: ("assets/images/BoxCastellon.png"),
                                  loadingPercent: 0.6,
                                  title: 'Box Castellon',
                                  subtitle: 'Carrer Peri 11 Núm. 1, 11, 12004 Castelló de la Plana, Castelló',
                                  paginaprivada: otra(),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                ActiveProjectsCard(
                                  cardimage: ("assets/images/neumaticosferreres.png"),
                                  loadingPercent: 0.45,
                                  title: 'Neumáticos Ferreres',
                                  subtitle: 'Ctra. de Borriol, 1a, 12004 Castelló de la Plana, Castelló',
                                  paginaprivada: otra(),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

