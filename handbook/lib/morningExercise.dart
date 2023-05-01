import 'package:flutter/material.dart';

class MorningExercise extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Morning Exercise when pregnant'),
      ),
      body:
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Exercising is one way to improve mental and physical well-being during and after pregnancy.'),
            SizedBox(height: 8),
            ListTile(
              leading: Icon(Icons.check),
              title: Text('Walking. Not everyone is an athlete, so if you’re just starting off with exercise, walking is a great way to slowly establish a routine. It’s easy on your joints and you can do it anywhere, even inside your home. Remember that you want to get your heart rate up, so try brisk walking, adding in a few hills, or increasing the distance as you build your stamina.'),
            ),
            ListTile(
              leading: Icon(Icons.check),
              title: Text('Seated ball balance. This is a yoga ball exercise that works your abdominals and helps improve balance and stability. Sit in the center of the ball with a neutral back and feet flat on the floor, hip width apart. Pull your belly button toward your spine to engage your abs. Keep breathing and holding your muscles as you straighten and lift one leg up and extend the opposite arm (so, left leg/right arm, and vice versa). Hold for a few seconds.Release and repeat with the other leg and arm, alternating about four to six times.'),
            ),

          ],
        ),
      ),
    );
  }
}