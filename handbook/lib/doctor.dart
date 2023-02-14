// import 'package:flutter/material.dart';
// import 'navBar.dart';

// class MyAppointmentsPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Book Appointment"),
//       ),
//       body: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Text(
//               " WELCOME!!!!\n  YOU ARE AWESOME & WONDERFUL ",
//               // welcoming text 
//               style: TextStyle(fontSize: 18),
//             ),
//           ),

//           OutlinedButton(
//             onPressed: (){
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => NavBar()),
//               );
//             },
//             child: Text(
//               'BOOK APPOINTMENT HERE',
//               style: TextStyle(fontSize: 16.0, color: Colors.white),

//             ),
//             style: ButtonStyle(
//                 backgroundColor: MaterialStateProperty.all<Color>(Colors.pinkAccent),
//                 shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//                     RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(18.0),
//                       side: BorderSide(color: Colors.red),
//                     )
//                 )
//             ),

//           ),

//           SizedBox(height: 14,),

//           OutlinedButton(
//             onPressed: (){
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => NavBar()),
//               );
//             },
//             // child to hold text
//             child: Text('CANCEL DOCTOR’S APPOINTMENT',
//               style: TextStyle(fontSize: 16.0, color: Colors.white),

//             ),
//             style: ButtonStyle(
//                 backgroundColor: MaterialStateProperty.all<Color>(Colors.pinkAccent),
//                 shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//                     RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(18.0),
//                       side: BorderSide(color: Colors.red),
//                     )
//                 )
//             ),

//           ),
//           SizedBox(height: 14,),
//           OutlinedButton(
//             onPressed: (){
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => NavBar()),
//               );
//             },
//             child: Text(
//               'VIEW MY AVAILABLE APPOINTMENTS',
//               style: TextStyle(fontSize: 16.0, color: Colors.white),

//             ),
//             style: ButtonStyle(
//                 backgroundColor: MaterialStateProperty.all<Color>(Colors.pinkAccent),
//                 shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//                     RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(18.0),
//                       side: BorderSide(color: Colors.red),
//                     )
//                 )
//             ),

//           ),


//           SizedBox(height: 55,),

//           Container(
//             color: Colors.deepPurple,
//             height: 180,
//             padding: EdgeInsets.all(16),



//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 Column(
//                   // child to hold an icon image
//                   children: [
//                     Image.asset(
//                       'assets/Images/social-care.png',
//                       width: 100,
//                       height: 100,
//                       fit: BoxFit.cover,
//                     ),
//                     SizedBox(height: 16),
//                     Text(
//                       'PREGNANCY \n TRACKER',
//                       style: TextStyle(
//                           fontSize: 8,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.white),
//                     ),
//                   ],
//                 ),
//                 Column(
//                   // child to hold an icon image
//                   children: [
//                     Image.asset(
//                       'assets/Images/pregnancy.png',
//                       width: 100,
//                       height: 100,
//                     ),
//                     SizedBox(height: 16),
//                     Text(
//                       'PREGNANCY TRACKER',
//                       style: TextStyle(fontSize: 8,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white,),
//                     ),
//                   ],
//                 ),
//                 Column(
//                   // child to hold an icon image
//                   children: [
//                     Image.asset(
//                       'assets/Images/book.png',
//                       width: 100,
//                       height: 100,
//                     ),
//                     SizedBox(height: 16),
//                     Text('EDUCATE ME',
//                       style: TextStyle(fontSize: 8,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white,),
//                     ),
//                   ],
//                 ),
//               ],
//             )
//             ,
//           ),

//           Expanded(
//             child: Align(
//               alignment: Alignment.bottomCenter,
//               child: Padding(
//                 padding: const EdgeInsets.all(30.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text(
//                       "Click here for more helpful pregnancy information...",
//                       style: TextStyle(fontSize: 14),
//                     ),
//                     Icon(Icons.chevron_right),
//                     // NavBar()
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ],


//       ),
//     );
//   }
// }


// **********************************************************END OF INITIAL CODE**********************************************************************************
// **************************************************************IMPROVED CODE************************************************************************************


import 'package:flutter/material.dart';

class MydoctorWidget extends StatefulWidget {
  @override
  _MydoctorWidgetState createState() => _MydoctorWidgetState();
}

class _MydoctorWidgetState extends State<MydoctorWidget> {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator MydoctorWidget - FRAME

    return Container(
        width: 428,
        height: 773,
        decoration: BoxDecoration(
          color: Color.fromRGBO(255, 255, 255, 1),
        ),
        child: Stack(children: <Widget>[
          Positioned(
              top: 0,
              left: 0,
              child: Container(
                  width: 428,
                  height: 79,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(160, 25, 194, 1),
                  ))),
          Positioned(
              top: 100,
              left: 40,
              child: Text(
                'WELCOME!!!!YOU ARE AWESOME & WONDERFUL ',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontFamily: 'Inter',
                    fontSize: 20,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              ))
        ]));
    Positioned(
        top: 161,
        left: 88,
        child: Container(
            width: 253,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              color: Color.fromRGBO(216, 31, 219, 1),
            )));
    Positioned(
        top: 177,
        left: 120,
        child: Text(
          'BOOK APPOINTMENT HERE',
          textAlign: TextAlign.left,
          style: TextStyle(
              color: Color.fromRGBO(255, 255, 255, 1),
              fontFamily: 'Inter',
              fontSize: 14,
              letterSpacing:
                  0 /*percentages not used in flutter. defaulting to zero*/,
              fontWeight: FontWeight.normal,
              height: 1),
        ));
    Positioned(
        top: 403,
        left: 0,
        child: Container(
            width: 428,
            height: 223,
            decoration: BoxDecoration(
              color: Color.fromRGBO(160, 25, 194, 1),
            )));
    Positioned(
        top: 559,
        left: 25,
        child: Text(
          'SOCIAL SUPPORT',
          textAlign: TextAlign.left,
          style: TextStyle(
              color: Color.fromRGBO(255, 255, 255, 1),
              fontFamily: 'Inter',
              fontSize: 14,
              letterSpacing:
                  0 /*percentages not used in flutter. defaulting to zero*/,
              fontWeight: FontWeight.normal,
              height: 1),
        ));
    Positioned(
        top: 556,
        left: 170,
        child: Text(
          'PREGNANCY TRACKER',
          textAlign: TextAlign.left,
          style: TextStyle(
              color: Color.fromRGBO(255, 255, 255, 1),
              fontFamily: 'Inter',
              fontSize: 14,
              letterSpacing:
                  0 /*percentages not used in flutter. defaulting to zero*/,
              fontWeight: FontWeight.normal,
              height: 1),
        ));
    Positioned(
        top: 559,
        left: 305,
        child: Text(
          'EDUCATE ME',
          textAlign: TextAlign.left,
          style: TextStyle(
              color: Color.fromRGBO(255, 255, 255, 1),
              fontFamily: 'Inter',
              fontSize: 14,
              letterSpacing:
                  0 /*percentages not used in flutter. defaulting to zero*/,
              fontWeight: FontWeight.normal,
              height: 1),
        ));
    Positioned(
        top: 440,
        left: 25,
        child: Container(
            width: 70.2300033569336,
            height: 70.2300033569336,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('Socialcare1.png'), fit: BoxFit.fitWidth),
            )));
    Positioned(
        top: 435,
        left: 174,
        child: Container(
            width: 76.38343811035156,
            height: 80.13999938964844,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('Pregnancy1.png'), fit: BoxFit.fitWidth),
            )));
    Positioned(
        top: 635,
        left: 29,
        child: Text(
          'Click here for more helpful pregnancy information',
          textAlign: TextAlign.left,
          style: TextStyle(
              color: Color.fromRGBO(0, 0, 0, 1),
              fontFamily: 'Inter',
              fontSize: 20,
              letterSpacing:
                  0 /*percentages not used in flutter. defaulting to zero*/,
              fontWeight: FontWeight.normal,
              height: 1),
        ));
    Positioned(
        top: 3.2074689865112305,
        left: 341,
        child: Container(
          width: 70.22559356689453,
          height: 75.08213806152344,
          child: Stack(children: <Widget>[
            Positioned(
                top: 0,
                left: 0,
                child: Image.asset(
                  ' Socialcare1.png',
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ))
          ]),
        ));
    Positioned(
        top: 231,
        left: 70,
        child: Container(
            width: 290,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              color: Color.fromRGBO(216, 31, 219, 1),
            )));
    Positioned(
        top: 247,
        left: 88,
        child: Text(
          'CANCEL DOCTOR’S APPOINTMENT',
          textAlign: TextAlign.left,
          style: TextStyle(
              color: Color.fromRGBO(255, 255, 255, 1),
              fontFamily: 'Inter',
              fontSize: 14,
              letterSpacing:
                  0 /*percentages not used in flutter. defaulting to zero*/,
              fontWeight: FontWeight.normal,
              height: 1),
        ));
    Positioned(
        top: 312,
        left: 49,
        child: Container(
            width: 331,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              color: Color.fromRGBO(216, 31, 219, 1),
            )));
    Positioned(
        top: 327,
        left: 87,
        child: Text(
          'VIEW MY AVAILABLE APPOINTMENTS',
          textAlign: TextAlign.left,
          style: TextStyle(
              color: Color.fromRGBO(255, 255, 255, 1),
              fontFamily: 'Inter',
              fontSize: 14,
              letterSpacing:
                  0 /*percentages not used in flutter. defaulting to zero*/,
              fontWeight: FontWeight.normal,
              height: 1),
        ));
    Positioned(
        top: 30,
        left: 73,
        child: Text(
          'Book Appointment',
          textAlign: TextAlign.left,
          style: TextStyle(
              color: Color.fromRGBO(255, 255, 255, 1),
              fontFamily: 'Inter',
              fontSize: 20,
              letterSpacing:
                  0 /*percentages not used in flutter. defaulting to zero*/,
              fontWeight: FontWeight.normal,
              height: 1),
        ));
    Positioned(
        top: 440,
        left: 316,
        child: Container(
            width: 70.22559356689453,
            height: 80.25782012939453,
            child: Stack(children: <Widget>[
              Positioned(
                  child: Image.asset(
                'pregnancy.png',
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              )),
            ])));
  }
}



