import 'package:flutter/material.dart';
import 'package:handbook/calendar.dart';
import 'package:handbook/eveningExercise.dart';
import 'morningExercise.dart';
import 'afternoonExe.dart';
import 'eveningExercise.dart';
import 'symptom.dart';
import 'diet.dart';

class ExercisePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Let's Work Out"),
      ),
      body: Column(
        children: [
          SizedBox(height: 35,),


          OutlinedButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MorningExercise()),
              );
            },
            child: Text(
              'MORNING',
              style: TextStyle(fontSize: 16.0, color: Colors.white),

            ),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.pinkAccent),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.red),
                    )
                )
            ),

          ),

          SizedBox(height: 35,),




          OutlinedButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AfternoonExercise()),
              );
            },
            child: Text(
              'AFTERNOON',
              style: TextStyle(fontSize: 16.0, color: Colors.white),

            ),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.pinkAccent),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.red),
                    )
                )
            ),

          ),
          SizedBox(height: 35,),

          OutlinedButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EveningExercise()),
              );
            },
            child: Text(
              'EVENING',
              style: TextStyle(fontSize: 16.0, color: Colors.white),

            ),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.pinkAccent),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.red),
                    )
                )
            ),

          ),






           SizedBox(height: 100,),

                  Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
            color: Colors.deepPurple,
            height: 195,
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [

// DIET PAGE LINK                
                Column(
                  children: [
                   GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DietPage()),
                          );
                        },
                        child: Image.asset(
                          'assets/Images/diet.png',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                    SizedBox(height: 16),
                    Text(
                      'MY DIET',
                      style: TextStyle(fontSize: 8,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,),
                    ),
                  ],
                ),

 //  SYMPTOMS PAGE LINK

                Column(
                  children: [
                   GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SymptomPage()),
                          );
                        },
                        child: Image.asset(
                          'assets/Images/pregnancy.png',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                    SizedBox(height: 16),
                    Text(
                      'PREGNANCY SYMPTOMS',
                      style: TextStyle(fontSize: 8,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,),
                    ),
                  ],
                ),

//CALENDAR PAGE LINK
                Column(
                  children: [
                   GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CalendarPage()),
                          );
                        },
                        child: Image.asset(
                          'assets/Images/calendar.png',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                    SizedBox(height: 16),
                    Text(
                      'MY CALENDAR',
                      style: TextStyle(fontSize: 8,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,),
                    ),
                  ],
                ),


              ],
            )
            ,
          ),
)
)
        ],


      ),
    );
  }
}
