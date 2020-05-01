import 'package:flutter/material.dart';
import 'package:dailyplan/complements/dates_list.dart';
import 'package:dailyplan/widgets/calendar_dates.dart';
import 'package:dailyplan/widgets/task_container.dart';
import 'package:dailyplan/create_new_task_page.dart';
import 'package:dailyplan/widgets/back_button.dart';

class CalendarPage extends StatelessWidget {
  Widget _dashedText() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15),
      child: Text(
        '------------------------------------------',
        maxLines: 1,
        style:
            TextStyle(fontSize: 20.0, color: Colors.white, letterSpacing: 5),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.green[100],
              Colors.green[200],
              Colors.green[300],
              Colors.green[400],
            ],
            stops: [0.1, 0.4, 0.7, 0.9],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(
              20,
              20,
              20,
              0,
            ),
            child: Column(
              children: <Widget>[
                MyBackButton(),
                SizedBox(height: 30.0),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Mis citas de hoy',
                        style: TextStyle(
                            fontSize: 30.0, fontWeight: FontWeight.w700),
                      ),
                      Container(
                        height: 40.0,
                        width: 120,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: FlatButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CreateNewTaskPage(),
                              ),
                            );
                          },
                          child: Center(
                            child: Text(
                              'Añadir cita personal',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ]),
                SizedBox(height: 10),
                SizedBox(height: 30),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Abril, 2020',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                  ),
                ),
                SizedBox(height: 20.0),
                Container(
                  height: 58.0,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: days.length,
                    itemBuilder: (BuildContext context, int index) {
                      return CalendarDates(
                        day: days[index],
                        date: dates[index],
                        dayColor: index == 0 ? Colors.red : Colors.black54,
                        dateColor:
                            index == 0 ? Colors.red : Colors.blueAccent,
                      );
                    },
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 20.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: ListView.builder(
                              itemCount: time.length,
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemBuilder: (BuildContext context, int index) =>
                                  Padding(
                                    padding:
                                    const EdgeInsets.symmetric(vertical: 15.0),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        '${time[index]} ${time[index] > 8 ? 'AM' : 'PM'}',
                                        style: TextStyle(
                                          fontSize: 16.0,
                                          color: Colors.black54,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            flex: 5,
                            child: ListView(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              children: <Widget>[
                                _dashedText(),
                                TaskContainer(
                                  title: 'Box Castellon',
                                  subtitle:
                                      'Clase dirigida',
                                  boxColor: Colors.yellow,
                                ),
                                _dashedText(),
                                TaskContainer(
                                  title: 'Café con Erika',
                                  subtitle: 'En "Cafés la Habanera"',
                                  boxColor: Colors.deepPurple,
                                ),
                                TaskContainer(
                                  title: 'Peluqueria Peinados',
                                  subtitle: 'Corte, tinte y limpieza facial \n \n  \n \n  \n \n ',
                                  boxColor: Colors.pinkAccent,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
