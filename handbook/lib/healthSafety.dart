// import 'package:flutter/material.dart';
// import 'navBar.dart';
// import 'socialSupport.dart';
// import 'doctor.dart';
// import 'symptom.dart';


// class HealthsafetyPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Health and Safety "),
//       ),
//       body: Column(
//         children: [
//           SizedBox(height: 20,),



//           SizedBox(height: 20,),


//           OutlinedButton(
//             onPressed: (){
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => NavBar()),
//               );
//             },
//             child: Text(
//               'WARNING SIGNS',
//               style: TextStyle(fontSize: 20.0, color: Colors.white),


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


//           SizedBox(height: 35,),

//           OutlinedButton(
//             onPressed: (){
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => NavBar()),
//               );
//             },
//             child: Text(
//               'EMERGENCY INFO',
//               style: TextStyle(fontSize: 20.0, color: Colors.white),


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
//           SizedBox(height: 165,),




//           Container(
//             color: Color(0xFF551765),
//             height: 220,
//             child: Padding(
//               padding: EdgeInsets.only(left: 20.0),
//               child: Center(

//                   child:Text(
//                     'More up-to-date info on health & safety during pregnancy',
//                     textAlign: TextAlign.center,
//                     style:TextStyle(color: Colors.white, fontSize: 20),
//                   )
//               ),
//             ),
//           ),


//           Container(
//             color: Colors.deepPurple,
//             height: 234.2,
//             padding: EdgeInsets.all(16),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [

// // SOCIAL SUPPORT IMAGE LINK 
//                 Column(
//                   children: [
//                     GestureDetector(
//                       onTap: () {
//                         // Navigate to the second page when the image is tapped
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(builder: (context) => SocialSupportpage()),
//                         );
//                       },
//                       child: Image.asset(
//                         'assets/Images/social-care.png',
//                         width: 100,
//                         height: 100,
//                       ),
                      
//                     ),
//                     const SizedBox(height: 16),
//                     const Text(
//                       'SOCIAL  \n SUPPORT',
//                       style: TextStyle(
//                           fontSize: 8,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.white),
//                     ),
//                   ],
//                 ),

// // DOCTOR PAGE IMAGE LINK 

//                 Column(
//                   children: [
//                     GestureDetector(
//                       onTap: () {
//                         // Navigate to the second page when the image is tapped
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(builder: (context) => MyAppointmentsPage()),
//                         );
//                       },
//                       child: Image.asset(
//                         'assets/Images/advice.png',
//                         width: 100,
//                         height: 100,
//                       ),
                      
//                     ),
//                     const SizedBox(height: 16),
//                     const Text(
//                       'MY DOCTOR',
//                       style: TextStyle(
//                           fontSize: 8,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.white),
//                     ),
//                   ],
//                 ),

              
// // SYMPTOMS PAGE IMAGE LINK 

//                 Column(
//                   children: [
//                     GestureDetector(
//                       onTap: () {
//                         // Navigate to the second page when the image is tapped
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(builder: (context) => SymptomPage()),
//                         );
//                       },
//                       child: Image.asset(
//                         'assets/Images/pregnancy.png',
//                         width: 100,
//                         height: 100,
//                       ),
                      
//                     ),
//                     const SizedBox(height: 16),
//                     const Text(
//                       'PREGNANCY TRACKER',
//                       style: TextStyle(
//                           fontSize: 8,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.white),
//                     ),
//                   ],
//                 ),


//               ],
//             )
//             ,
//           ),
//         ],




//       ),
//     );
//   }
// }