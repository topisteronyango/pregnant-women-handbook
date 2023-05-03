import 'package:flutter/material.dart';
import 'package:handbook/homePage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'calendar.dart';
import 'doctor.dart';
import 'educate.dart';
// import 'healthSafety.dart';
import 'symptom.dart';
import 'diet.dart';
import 'exercise.dart';
// import 'socialSupport.dart';
import 'prenatal.dart';
import 'postnatal.dart';
import 'logout.dart';
import 'aboutus.dart';


class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Drawer(
      child: ListView(
        children: [

// MY DOCTOR PAGE LINK
          ListTile(
            leading: Image.asset(
              'assets/Images/advice.png',
              height: 20,
              width: 20,
            ),
            title: Text('My Doctor'),
            onTap: () {
              Navigator.push( 
                context,
                MaterialPageRoute(builder: (context) => MyAppointmentsPage()),
              );
            },
          ),

// PREGNANCY TRACKER PAGE LINK (SYMPTOMS)

          ListTile(
            leading: Image.asset(
              'assets/Images/pregnancy.png',
              height: 20,
              width: 20,
            ),
            title: Text('Pregnancy Tracker'),
            onTap: ()  {
              Navigator.push( 
                context,
                MaterialPageRoute(builder: (context) => SymptomPage()),
              );
            },
          ),

// EDUCATE ME PAGE LINK

          ListTile(
            leading: Image.asset(
              'assets/Images/book.png',
              height: 20,
              width: 20,
            ),
            title: Text('Educate Me'),
            onTap: () {
              Navigator.push( 
                context,
                MaterialPageRoute(builder: (context) => EducateMePage()),
              );
            },
          ),

// SOCIAL SUPPORT PAGE LINK

          // ListTile(
          //   leading: Image.asset(
          //     'assets/Images/social-care.png',
          //     height: 20,
          //     width: 20,
          //   ),
          //   title: Text('Social Support'),
          //   onTap: () {
          //     Navigator.push( 
          //       context,
          //       MaterialPageRoute(builder: (context) => SocialSupportpage()),
          //     );
          //   },
          // ),

// HEALTH AND SAFETY ME PAGE LINK

          // ListTile(
          //   leading: Image.asset(
          //     'assets/Images/magic.png',
          //     height: 20,
          //     width: 20,
          //   ),
          //   title: Text('Health and Safety'),
          //   onTap: () {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(builder: (context) => HealthsafetyPage()),
          //     );
          //   },

          // ),

// EXERCISE PAGE LINK

          ListTile(
            leading: Image.asset(
              'assets/Images/meditation.png',
              height: 20,
              width: 20,
            ),
            title: Text('Exercise'),
            onTap: () {
              Navigator.push( 
                context,
                MaterialPageRoute(builder: (context) => ExercisePage()),
              );
            },

          ),
          
// DIET PAGE LINK

          ListTile(
            leading: Icon(Icons.food_bank_outlined),
            title: Text('Diet'),
            onTap: () {
              Navigator.push( 
                context,
                MaterialPageRoute(builder: (context) => DietPage()),
              );
            },
          ),

// PRENATAL PAGE LINK

          ListTile(
            leading: Icon(Icons.pregnant_woman_outlined),
            title: Text('Prenatal'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PrenatalPage()),
              );
            },

          ),

// POSTNATAL PAGE LINK

          ListTile(
            leading: Icon(Icons.woman),
            title: Text('Postnatal'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PostnatalPage()),
              );
            },

          ),

          ListTile(
            title: Text('My Calendar'),
            leading: Image.asset(
              'assets/Images/calendar.png',
              height: 20,
              width: 20,
            ),
            onTap: () {
              Navigator.push( 
                context,
                MaterialPageRoute(builder: (context) => CalendarPage()),
              );
            },
          ),

//ABOUT US
  
            ListTile(
              title: Text('About Us'),
              leading: Image.asset(
                'assets/Images/about.png',
                height: 20,
                width: 20,
              ),
              onTap: () {
                Navigator.push( 
                  context,
                  MaterialPageRoute(builder: (context) => AboutUsPage()),
                );
              },
            ),

//LOGOUT PAGE LINK

          ListTile(
            title: Text('Logout'),
            leading: Image.asset(
              'assets/Images/logout.png',
              height: 20,
              width: 20,
            ),
            onTap: () async {
              SharedPreferences prefs = await SharedPreferences.getInstance();
              prefs.remove('email');
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LogoutPage()),
              );
            },
          ),          

        ],
      ),

    );


  }
}

