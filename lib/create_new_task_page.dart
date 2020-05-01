import 'package:flutter/material.dart';
import 'package:dailyplan/widgets/top_container.dart';
import 'package:dailyplan/widgets/back_button.dart';
import 'package:dailyplan/widgets/my_text_field.dart';
import 'package:dailyplan/home_page.dart';

class CreateNewTaskPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    var downwardIcon = Icon(
      Icons.keyboard_arrow_down,
      color: Colors.white,
    );
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            TopContainer(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 40),
              width: width,
              child: Column(
                children: <Widget>[
                  MyBackButton(),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Detalles de la cita personal',
                        style: TextStyle(
                            fontSize: 30.0, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Container(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      MyTextField(label: 'Titulo'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Expanded(
                            child: MyTextField(
                              label: 'Fecha',
                              icon: downwardIcon,
                            ),
                          ),
                          Principal.calendarIcon(),
                        ],
                      )
                    ],
                  ))
                ],
              ),
            ),
            Expanded(
                child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                          child: MyTextField(
                        label: 'Start Time',
                        icon: downwardIcon,
                      )),
                      SizedBox(width: 40),
                      Expanded(
                        child: MyTextField(
                          label: 'End Time',
                          icon: downwardIcon,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  MyTextField(
                    label: 'Description',
                    minLines: 3,
                    maxLines: 3,
                  ),
                  SizedBox(height: 20),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Category',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                        Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          //direction: Axis.vertical,
                          alignment: WrapAlignment.center,
                          verticalDirection: VerticalDirection.down,
                          runSpacing: 10,
                          //textDirection: TextDirection.rtl,
                          spacing: 25.0,
                          children: <Widget>[
                            Chip(
                              label: Text("Laboral"),
                              backgroundColor: Colors.red,
                              labelStyle: TextStyle(color: Colors.white),
                            ),
                            Chip(
                              label: Text("Social"),
                            ),
                            Chip(
                              label: Text("Familiar"),
                            ),
                            Chip(
                              label: Text("Otro tipo"),
                            ),
                            Chip(
                              label: Text("Evento especial"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )),
            Container(
              height: 80,
              width: width,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    child: Text(
                      'Añadir al calendario',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 18),
                    ),
                    alignment: Alignment.center,
                    margin: EdgeInsets.fromLTRB(20, 10, 20, 20),
                    width: width - 40,
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
