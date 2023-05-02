import 'package:flutter/material.dart';
import 'package:handbook/healthSafety.dart';
import 'navBar.dart';
import 'socialSupport.dart';
import 'diet.dart';
import 'symptom.dart';
import 'morningExercise.dart';
import 'afternoonExe.dart';
import 'eveningExercise.dart';


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






          SizedBox(height: 158,),

          Container(
            color: Colors.deepPurple,
            height: 195,

            padding: EdgeInsets.all(16),



            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [

// HEALTH & SAFETY PAGE IMAGE LINK 
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Navigate to the second page when the image is tapped
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HealthsafetyPage()),
                        );
                      },
                      child: Image.asset(
                        'assets/Images/health.png',
                        width: 100,
                        height: 100,
                      ),
                      
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'SOCIAL  \n SUPPORT',
                      style: TextStyle(
                          fontSize: 8,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),

// DIET IMAGE LINK 
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Navigate to the second page when the image is tapped
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => DietPage()),
                        );
                      },
                      child: Image.asset(
                        'assets/Images/diet.png',
                        width: 100,
                        height: 100,
                      ),
                      
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'MY DIET',
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
                      'SYMPTOMS TRACKER',
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
