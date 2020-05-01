import 'package:flutter/material.dart';
import 'package:flutter_clean_calendar/flutter_clean_calendar.dart';

class Reservas extends StatefulWidget {

  State<StatefulWidget> createState() {
    return _ReservasState();
  }
}

class _ReservasState extends State<Reservas> {
  void _handleNewDate(date) {
    setState(() {
      _selectedDay = date;
      _selectedEvents = _events[_selectedDay] ?? [];
    });
    print(_selectedEvents);
  }

  List _selectedEvents;
  DateTime _selectedDay;

  final Map _events = {
    DateTime(2020, 4, 27): [
      {'name': '09 : 00', 'reserva' : 'Reservado', 'isDone': true},
      {'name': '10 : 00', 'reserva' : 'Reservado', 'isDone': true},
      {'name': '11 : 00', 'reserva' : 'Reservado', 'isDone': true},
      {'name': '12 : 00', 'reserva' : 'Reservado', 'isDone': true},
      {'name': '13 : 00', 'reserva' : 'Reservado', 'isDone': true},
      {'name': '16 : 00', 'reserva' : 'Reservado', 'isDone': true},
      {'name': '17 : 00', 'reserva' : 'Reservado', 'isDone': true},
      {'name': '18 : 00', 'reserva' : 'Reservado', 'isDone': true},
      {'name': '19 : 00', 'reserva' : 'Reservado', 'isDone': true},
      {'name': '20 : 00', 'reserva' : 'Reservado', 'isDone': true},
    ],
    DateTime(2020, 4, 28): [
      {'name': '09 : 00', 'reserva' : 'Reservado', 'isDone': true},
      {'name': '10 : 00', 'reserva' : 'Reservado', 'isDone': true},
      {'name': '11 : 00', 'reserva' : '- - - - - - - - - ', 'isDone': false},
      {'name': '12 : 00', 'reserva' : '- - - - - - - - - ', 'isDone': false},
      {'name': '13 : 00', 'reserva' : 'Reservado', 'isDone': true},
      {'name': '16 : 00', 'reserva' : 'Reservado', 'isDone': true},
      {'name': '17 : 00', 'reserva' : '- - - - - - - - - ', 'isDone': false},
      {'name': '18 : 00', 'reserva' : '- - - - - - - - - ', 'isDone': false},
      {'name': '19 : 00', 'reserva' : 'Reservado', 'isDone': true},
      {'name': '20 : 00', 'reserva' : 'Reservado', 'isDone': true},
    ],
    DateTime(2020, 4, 29): [
      {'name': '09 : 00', 'reserva' : 'Reservado', 'isDone': true},
      {'name': '10 : 00', 'reserva' : 'Reservado', 'isDone': true},
      {'name': '11 : 00', 'reserva' : '- - - - - - - - - ', 'isDone': false},
      {'name': '12 : 00', 'reserva' : '- - - - - - - - - ', 'isDone': false},
      {'name': '13 : 00', 'reserva' : 'Reservado', 'isDone': true},
      {'name': '16 : 00', 'reserva' : 'Reservado', 'isDone': true},
      {'name': '17 : 00', 'reserva' : '- - - - - - - - - ', 'isDone': false},
      {'name': '18 : 00', 'reserva' : '- - - - - - - - - ', 'isDone': false},
      {'name': '19 : 00', 'reserva' : 'Reservado', 'isDone': true},
      {'name': '20 : 00', 'reserva' : 'Reservado', 'isDone': true},
    ],
    DateTime(2020, 4, 30): [
      {'name': '09 : 00', 'reserva' : 'Reservado', 'isDone': true},
      {'name': '10 : 00', 'reserva' : 'Reservado', 'isDone': true},
      {'name': '11 : 00', 'reserva' : '- - - - - - - - - ', 'isDone': false},
      {'name': '12 : 00', 'reserva' : '- - - - - - - - - ', 'isDone': false},
      {'name': '13 : 00', 'reserva' : 'Reservado', 'isDone': true},
      {'name': '16 : 00', 'reserva' : 'Reservado', 'isDone': true},
      {'name': '17 : 00', 'reserva' : '- - - - - - - - - ', 'isDone': false},
      {'name': '18 : 00', 'reserva' : '- - - - - - - - - ', 'isDone': false},
      {'name': '19 : 00', 'reserva' : 'Reservado', 'isDone': true},
      {'name': '20 : 00', 'reserva' : 'Reservado', 'isDone': true},
    ],
    DateTime(2020, 5, 1): [
      {'name': '09 : 00', 'reserva' : 'Reservado', 'isDone': true},
      {'name': '10 : 00', 'reserva' : 'Reservado', 'isDone': true},
      {'name': '11 : 00', 'reserva' : '- - - - - - - - - ', 'isDone': false},
      {'name': '12 : 00', 'reserva' : '- - - - - - - - - ', 'isDone': false},
      {'name': '13 : 00', 'reserva' : 'Reservado', 'isDone': true},
      {'name': '16 : 00', 'reserva' : 'Reservado', 'isDone': true},
      {'name': '17 : 00', 'reserva' : '- - - - - - - - - ', 'isDone': false},
      {'name': '18 : 00', 'reserva' : '- - - - - - - - - ', 'isDone': false},
      {'name': '19 : 00', 'reserva' : 'Reservado', 'isDone': true},
      {'name': '20 : 00', 'reserva' : 'Reservado', 'isDone': true},
    ],
    DateTime(2020, 5, 2): [
      {'name': '09 : 00', 'reserva' : 'Reservado', 'isDone': true},
      {'name': '10 : 00', 'reserva' : 'Reservado', 'isDone': true},
      {'name': '11 : 00', 'reserva' : '- - - - - - - - - ', 'isDone': false},
      {'name': '12 : 00', 'reserva' : '- - - - - - - - - ', 'isDone': false},
      {'name': '13 : 00', 'reserva' : 'Reservado', 'isDone': true},
      {'name': '14 : 00', 'reserva' : 'Reservado', 'isDone': true},
    ],
  };

  void initState() {
    super.initState();
    _selectedEvents = _events[_selectedDay] ?? [];
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              child: Calendar(
                  events: _events,
                  onRangeSelected: (range) =>
                      print("Range is ${range.from}, ${range.to}"),
                  onDateSelected: (date) => _handleNewDate(date),
                  isExpandable: true,
                  showTodayIcon: true,
                  eventDoneColor: Colors.red,
                  eventColor: Colors.green),
            ),
            _buildEventList()
          ],
        ),
      ),
    );
  }

  Widget _buildEventList() {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (BuildContext context, int index) => Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(width: 1.5, color: Colors.black12),
            ),
          ),
          padding:
          const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
          child: Row (
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
            Text (_selectedEvents[index]['name'].toString(), textAlign: TextAlign.start, style: TextStyle (fontSize: 20),),
            SizedBox (width: 10,),
            Text (_selectedEvents[index]['reserva'].toString(), textAlign: TextAlign.end, style: TextStyle (fontSize: 20),),

          ]),
        ),
        itemCount: _selectedEvents.length,
      ),
    );
  }
}
