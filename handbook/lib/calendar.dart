import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'navBar.dart';
import 'symptom.dart';
import 'educate.dart';
import 'doctor.dart';


void main() => runApp(CalendarPage());

class CalendarPage extends StatefulWidget {
  @override
  _CalendarPageState createState() => _CalendarPageState();

}

class _CalendarPageState extends State<CalendarPage> {

  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime _firstDay = DateTime(2023, 1, 1);
  DateTime _lastDay = DateTime(2023, 12, 31);
  RangeSelectionMode _rangeSelectionMode = RangeSelectionMode.toggledOff;
  late DateTime _selectedDay;

  @override
  void initState() {
    super.initState();
    _selectedDay = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;

    return MaterialApp(
      home: Scaffold(
        drawer: NavBar(),

        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Text("MY CALENDAR"),

          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Container(
                width: width,
                //height: height *0.1,
                padding: EdgeInsets.all(12.0),
                alignment: Alignment.center,

              ),

              //SizedBox(height: 3.0,),

              TableCalendar(

                calendarFormat: _calendarFormat,
                focusedDay: _focusedDay,
                firstDay: _firstDay,
                lastDay: _lastDay,
                rangeSelectionMode: _rangeSelectionMode,
                selectedDayPredicate: (day) {
                  return isSameDay(_selectedDay, day);
                },
                onDaySelected: (selectedDay, focusedDay) {
                  setState(() {
                    _selectedDay = selectedDay;
                    _focusedDay = focusedDay;
                  });
                },
                onRangeSelected: (startDay, endDay, focusedDay) {
                  setState(() {
                    _focusedDay = focusedDay;
                  });
                },
              ),


            Container(
              color: Colors.deepPurple,
              height: 195,
              padding: EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [

// SYMPTOMS PAGE IMAGE LINK 

                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Navigate to the second page when the image is tapped
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SymptomPage()),
                        );
                      },
                      child: Image.asset(
                        'assets/Images/pregnancy.png',
                        width: 100,
                        height: 100,
                      ),
                      
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'SYMPTOMS TRACKER',
                      style: TextStyle(
                          fontSize: 8,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),


// EDUCATE ME PAGE IMAGE LINK 

                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Navigate to the second page when the image is tapped
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => EducateMePage()),
                        );
                      },
                      child: Image.asset(
                        'assets/Images/book.png',
                        width: 100,
                        height: 100,
                      ),
                      
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'EDUCATE ME',
                      style: TextStyle(
                          fontSize: 8,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),


// DOCTOR PAGE IMAGE LINK 

                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Navigate to the second page when the image is tapped
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MyAppointmentsPage()),
                        );
                      },
                      child: Image.asset(
                        'assets/Images/advice.png',
                        width: 100,
                        height: 100,
                      ),
                      
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'MY DOCTOR',
                      style: TextStyle(
                          fontSize: 8,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),


                ],
              )
              ,
            ),

            ],
          ),
        ),
     ),
);
}
}
