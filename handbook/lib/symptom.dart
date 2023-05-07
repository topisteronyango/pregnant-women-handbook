import 'package:flutter/material.dart';
import 'package:handbook/aboutus.dart';
import 'package:handbook/diet.dart';
import 'package:handbook/postnatal.dart';
import 'package:handbook/prenatal.dart';
import 'navBar.dart';
import 'comsymptoms.dart';
import 'warnsymptoms.dart';
import 'addSymp.dart';

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
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Look at some of the symptoms you are experiencing on this page... ",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            OutlinedButton(
              onPressed: () {
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
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.pinkAccent),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.red),
                  ))),
            ),
            SizedBox(
              height: 35,
            ),
            OutlinedButton(
              onPressed: () {
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
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.pinkAccent),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.red),
                  ))),
            ),
            SizedBox(
              height: 35,
            ),
            OutlinedButton(
              onPressed: () {
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
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.pinkAccent),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.red),
                  ))),
            ),
            SizedBox(
              height: 80,
            ),
            Container(
              color: Colors.deepPurple,
              height: 195,
              padding: EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [

// PRENATAL PAGE LINK                
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
                          'assets/Images/pregnancy.png',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(height: 16),
                      Text(
                        'PRENATAL \n TIPS',
                        style: TextStyle(
                            fontSize: 8,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),

//ABOUT US PAGE LINK                  
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AboutUsPage()),
                          );
                        },
                        child: Image.asset(
                          'assets/Images/advice.png',
                          width: 100,
                          height: 100,
                        ),
                      ),
                      SizedBox(height: 16),
                      Text(
                        'ABOUT US',
                        style: TextStyle(
                          fontSize: 8,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),


// DIET PAGE LINK
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
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
                      SizedBox(height: 16),
                      Text(
                        'DIET',
                        style: TextStyle(
                          fontSize: 8,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),


                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
