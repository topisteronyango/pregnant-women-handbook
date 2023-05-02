import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            leading: Image.asset(
              'assets/Images/advice.png',
              height: 20,
              width: 20,
            ),
            title: Text('My Doctor'),
            onTap: () => null,
          ),
          ListTile(
            leading: Image.asset(
              'assets/Images/pregnancy.png',
              height: 20,
              width: 20,
            ),
            title: Text('Pregnancy Tracker'),
            onTap: () => null,
          ),
          ListTile(
            leading: Image.asset(
              'assets/Images/book.png',
              height: 20,
              width: 20,
            ),
            title: Text('Educate Me'),
            onTap: () => null,
          ),
          ListTile(
            leading: Image.asset(
              'assets/Images/social-care.png',
              height: 20,
              width: 20,
            ),
            title: Text('Social Support'),
            onTap: () => null,
          ),

          ListTile(
            leading: Image.asset(
              'assets/Images/magic.png',
              height: 20,
              width: 20,
            ),
            title: Text('Entertain Me'),
            onTap: () => null,
          ),
          ListTile(
            leading: Image.asset(
              'assets/Images/meditation.png',
              height: 20,
              width: 20,
            ),
            title: Text('Exercise'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.food_bank_outlined),
            title: Text('Diet'),
            onTap: () => null,
          ),

          ListTile(
            leading: Icon(Icons.pregnant_woman_outlined),
            title: Text('Prenatal'),
            onTap: () => null,
          ),

          ListTile(
            leading: Icon(Icons.woman),
            title: Text('Postnatal'),
            onTap: () => null,
          ),
<<<<<<< HEAD
=======
 
// CALENDAR PAGE LINK
>>>>>>> 49c107a8a7940378ebbf97b83a8f55100866d630

          ListTile(
            title: Text('My Calendar'),
            leading: Image.asset(
              'assets/Images/calendar.png',
              height: 20,
              width: 20,
            ),
            onTap: () => null,
          ),

        ],
      ),

    );


  }
}


