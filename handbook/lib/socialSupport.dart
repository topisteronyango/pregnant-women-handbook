import 'package:flutter/material.dart';
import 'navBar.dart';
import 'prenatal.dart';
import 'healthSafety.dart';
import 'doctor.dart';

class SocialSupportpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Social Support"),
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
                MaterialPageRoute(builder: (context) => NavBar()),
              );
            },
            child: Text(
              'VIEW WOMEN WITH SAME CATEGORY',
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
                MaterialPageRoute(builder: (context) => NavBar()),
              );
            },
            child: Text(
              'CONNECT WITH OTHER MOTHERS TO BE',
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
                MaterialPageRoute(builder: (context) => NavBar()),
              );
            },
            child: Text(
              'CONNECT WITH HEALTH CARE PROVIDER',
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

// PRENATAL PAGE IMAGE LINK 

                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Navigate to the second page when the image is tapped
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => PrenatalPage()),
                        );
                      },
                      child: Image.asset(
                        'assets/Images/prenatal.png',
                        width: 100,
                        height: 100,
                      ),
                      
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'PRENATAL CARE TIPS',
                      style: TextStyle(
                          fontSize: 8,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),


// HEALTH AND SAFETY PAGE IMAGE LINK 

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
                      'HEALTH AND SAFETY',
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
    );
  }
}
