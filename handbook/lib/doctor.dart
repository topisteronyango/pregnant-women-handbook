import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'symptom.dart';
import 'educate.dart';
import 'maps.dart';

class MyAppointmentsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact Doctor"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "                    WELCOME!!!!\n  YOU ARE AWESOME & WONDERFUL ",
              style: TextStyle(fontSize: 18),
            ),
          ),
          OutlinedButton(
            onPressed: null,
            // },
            child: Text(
              'Tel: +250 788 641 2763',
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
            height: 14,
          ),
          OutlinedButton(
            onPressed: null,
            child: Text(
              'Email: support@pwh.rw',
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
            height: 14,
          ),


          SizedBox(
            height: 55,
          ),

          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: 
              Container(
                color: Colors.deepPurple,
                height: 180,
                padding: EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [


// MAPS PAGE LINK                    
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            // Navigate to the second page when the image is tapped
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NearestHospital()),
                            );
                          },
                          child: Image.asset(
                            'assets/Images/location.jpg',
                            width: 100,
                            height: 100,
                          ),
                        ),
                        SizedBox(height: 16),
                        Text(
                          'Hospitals \n near you ',
                          style: TextStyle(
                              fontSize: 8,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
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

 //  EDUCATE ME PAGE LINK

                Column(
                  children: [
                   GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EducateMePage()),
                          );
                        },
                        child: Image.asset(
                          'assets/Images/book.png',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                    SizedBox(height: 16),
                    Text(
                      'EDUCATE ME ',
                      style: TextStyle(fontSize: 8,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,),
                    ),
                  ],
                ),


                  ],
                ),
              ),

          
            ),
          ),
        ],
      ),
    );
  }


}
