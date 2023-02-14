import "package:flutter/material.dart";
import 'package:table_calendar/table_calendar.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  DateTime today = DateTime.now();
  void _onDaySelected(DateTime day,DateTime focusedDay){
    setState((){
      today= day;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Calender")),
      body: content(),


    );
  }

  Widget content() {
    return Column(
      children: [
        Text(today.toString().split(" ")[0]),
        Container(
          color: Colors.purple,
          child: TableCalendar(
            calendarStyle: CalendarStyle(
              weekendTextStyle: TextStyle(color: Colors.grey),
            ),
            locale: 'en_US',
            rowHeight: 33,
            headerStyle:
            HeaderStyle(formatButtonVisible: false, titleCentered: true),
            availableGestures: AvailableGestures.all,
            selectedDayPredicate: (day) => isSameDay(day, today),
            focusedDay: today,
            firstDay: DateTime.utc(2010, 10, 16),
            lastDay: DateTime.utc(2030, 3, 143),
            onDaySelected: _onDaySelected

          ),
        ),
      ],
    );
  }
}








