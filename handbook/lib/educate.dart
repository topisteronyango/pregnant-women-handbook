import 'package:flutter/material.dart';
import 'navBar.dart';
<<<<<<< HEAD
import 'manage_emotional_imbalances.dart';
import 'healthyFood.dart';
import 'package:handbook/generalSelfCare.dart';

=======
import 'symptom.dart';
import 'socialSupport.dart';
import 'exercise.dart';
>>>>>>> 49c107a8a7940378ebbf97b83a8f55100866d630
class EducateMePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pregnancy Education"),
      ),
      body: Column(
        children: [
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "       READY TO LEARN?? ",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),

          SizedBox(height: 20,),

          OutlinedButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => manageEmotionalImbalances()),
              );
            },
            child: Text(
              'MANAGE EMOTIONAL IMBALANCES',
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
                MaterialPageRoute(builder: (context) => HealthFood()),
              );
            },
            child: Text(
              'HEALTHY FOOD TO CONSUME',
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
                MaterialPageRoute(builder: (context) => GeneralSelfCare()),
              );
            },
            child: Text(
              'GENERAL SELF CARE',
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
<<<<<<< HEAD
                    Image.asset(
                      'assets/Images/social-care.png',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 16),
                    Text(
                      'PREGNANCY \n TRACKER',
=======
                    GestureDetector(
                      onTap: () {
                        // Navigate to the second page when the image is tapped
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SymptomPage()),
                        );
                      },
                      child: Image.asset(
                        'assets/Images/coughing.png',
                        width: 100,
                        height: 100,
                      ),
                      
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'SYMPTOMS TRACKER',
>>>>>>> 49c107a8a7940378ebbf97b83a8f55100866d630
                      style: TextStyle(
                          fontSize: 8,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),

// SOCIAL SUPPORT IMAGE LINK 
                Column(
                  children: [
<<<<<<< HEAD
                    Image.asset(
                      'assets/Images/pregnancy.png',
                      width: 100,
                      height: 100,
=======
                    GestureDetector(
                      onTap: () {
                        // Navigate to the second page when the image is tapped
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SocialSupportpage()),
                        );
                      },
                      child: Image.asset(
                        'assets/Images/social-care.png',
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
                      
>>>>>>> 49c107a8a7940378ebbf97b83a8f55100866d630
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
<<<<<<< HEAD
                Column(
                  children: [
                    Image.asset(
                      'assets/Images/book.png',
                      width: 100,
                      height: 100,
                    ),
                    SizedBox(height: 16),
                    Text(
                      'EDUCATE ME',
                      style: TextStyle(fontSize: 8,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,),
                    ),
                  ],
                ),
=======


>>>>>>> 49c107a8a7940378ebbf97b83a8f55100866d630
              ],
            )
            ,
          ),
        ],


      ),
    );
  }
}
