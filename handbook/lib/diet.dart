import 'package:flutter/material.dart';
import 'package:handbook/calendar.dart';
import 'package:handbook/exercise.dart';
import 'package:handbook/symptom.dart';
import 'navBar.dart';
import 'starch.dart';
import 'proteins.dart';
import 'diary.dart';
import 'snacks.dart';
import 'fruitsVeges.dart';


class DietPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Special Diets"),
      ),
      body: Column(
        children: [
          SizedBox(height: 20,),


          OutlinedButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => StarchFood()),
              );
            },
            child: Text(
              'STARCH',
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

          SizedBox(height: 20,),




          OutlinedButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FruitsVeges()),
              );
            },
            child: Text(
              'FRUIT & VEG',
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
          SizedBox(height: 20,),

          OutlinedButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProteinsFood()),
              );
            },
            child: Text(
              'PROTEINS',
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

          SizedBox(height: 18,),


          OutlinedButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DiaryFood()),
              );
            },
            child: Text(
              'DIARY',
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

          SizedBox(height: 20,),
          OutlinedButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SnacksFood()),
              );
            },
            child: Text(
              'HEALTHY SNACKS',
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


          SizedBox(height: 70,),

          Container(
            color: Colors.deepPurple,
            height: 195,
            padding: EdgeInsets.all(16),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [

// EXERCISE PAGE IMAGE LINK 
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Navigate to the second page when the image is tapped
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ExercisePage()),
                        );
                      },
                      child: Image.asset(
                        'assets/Images/meditation.png',
                        width: 100,
                        height: 100,
                      ),
                      
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'MY EXERCISES',
                      style: TextStyle(
                          fontSize: 8,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),

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
                      'PREGNANCY TRACKER',
                      style: TextStyle(
                          fontSize: 8,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),

// CALENDAR PAGE IMAGE LINK 

                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Navigate to the second page when the image is tapped
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => CalendarPage()),
                        );
                      },
                      child: Image.asset(
                        'assets/Images/calendar.png',
                        width: 100,
                        height: 100,
                      ),
                      
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'MY CALENDAR',
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
    );
  }
}
