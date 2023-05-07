import 'package:flutter/material.dart';
import 'package:handbook/calendar.dart';
import 'manage_emotional_imbalances.dart';
import 'healthyFood.dart';
import 'package:handbook/generalSelfCare.dart';
import 'symptom.dart';
import 'prenatal.dart';

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


//  PRENATAL CARE TIPS PAGE LINK 

                Column(
                  children: [
                   GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PrenatalPage()),
                          );
                        },
                        child: Image.asset(
                          'assets/Images/social-care.png',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                    SizedBox(height: 16),
                    Text(
                      'PRENATAL CARE TIPS',
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

// CALENDAR PAGE LINK

                Column(
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>CalendarPage()),
                        );
                      },
                      child:    Image.asset(
                      'assets/Images/calendar.png',
                      width: 100,
                      height: 100,
                    ),
                    
                    ),
                 
                    SizedBox(height: 16),
                    Text(
                      'CALENDER',
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
