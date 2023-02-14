import "package:flutter/material.dart";
import 'package:intl/date_symbol_data_local.dart';
import 'package:table_calendar/table_calendar.dart';
// import 'package:womenpreganant/globals.dart' as globals;

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
        Text("Selected day =" + today.toString().split(" ")[0]),
        Container(
          child: TableCalendar(
            // locale: 'en_US',
            // rowHeight: 43,
            // headerStyle:
            // HeaderStyle(formatButtonVisible: false, titleCentered: true),
            // availableGestures: AvailableGesture.all,
            // selectedDayPredicate: (day) => isSameDay(day, today),
              focusedDay: today,
              firstDay: DateTime.utc(2010, 10, 16),
              lastDay: DateTime.utc(2030, 3, 143),
              // onDaySelected: _onDaySelected

          ),
        ),
      ],
    );
  }
}


  //
  // void _onDaySelected(DateTime day, DateTime focusedDay){
  //   setState((){
  //     today= day;
  //   });
  // }






