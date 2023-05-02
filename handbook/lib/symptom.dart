import 'package:flutter/material.dart';
import 'navBar.dart';
<<<<<<< HEAD
import 'comsymptoms.dart';
import 'warnsymptoms.dart';
import 'addSymp.dart';
=======
import 'socialSupport.dart';
import 'doctor.dart';
import 'diet.dart';
>>>>>>> 49c107a8a7940378ebbf97b83a8f55100866d630

class SymptomPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pregnancy Symptoms"),
        backgroundColor: Colors.deepPurple,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Look at some of the symptoms you are experiencing on this page... ",
                style: TextStyle(fontSize: 18,),
              ),
            ),

            SizedBox(height: 20,),

            OutlinedButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ComSymp()),
                );
              },
              child: Text(
                'LIST OF COMMON PREGNANCY SYMPTOMS',
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
                  MaterialPageRoute(builder: (context) => WarnSymp()),
                );
              },
              child: Text(
                'VIEW WARNING PREGNANCY SYMPTOMS',
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
                  MaterialPageRoute(builder: (context) => NewSymp()),
                );
              },
              child: Text(
                'ADD NEW SYMPTOM',
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


            SizedBox(height: 80,),

<<<<<<< HEAD
            Container(
              color: Colors.deepPurple,
              height: 195,

              padding: EdgeInsets.all(16),



              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(

                    children: [
                      Image.asset(
                        'assets/Images/pregnancy.png',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(height: 16),
                      Text(
                        'PREGNANCY \n TRACKER',
                        style: TextStyle(
                            fontSize: 8,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'assets/Images/advice.png',
                        width: 100,
                        height: 100,
                      ),
                      SizedBox(height: 16),
                      Text(
                        'PREGNANCY TRACKER',
                        style: TextStyle(fontSize: 8,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'assets/Images/diet.png',
                        width: 100,
                        height: 100,
                      ),
                      SizedBox(height: 16),
                      Text(
                        'DIET',
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
          ],
=======
          SizedBox(height: 55,),

          Container(
            color: Colors.deepPurple,
            height: 195,
            padding: EdgeInsets.all(16),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                
// SOCIAL SUPPORT IMAGE LINK 
                Column(
                  children: [
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

// DIET PAGE  IMAGE LINK 
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
          
        ]
         ),
      )],
>>>>>>> 49c107a8a7940378ebbf97b83a8f55100866d630


        ),
      ),
    );
  }
}
