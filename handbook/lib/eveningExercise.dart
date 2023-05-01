import 'package:flutter/material.dart';

class EveningExercise extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Evening Exercise when pregnant'),
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
              title: Text('Seated trunk twist. Among back exercises for pregnancy, this twist is great for both toning and stretching.Sit on the floor, crisscross-applesauce style. Place your left hand on your left leg (or right foot for a deeper stretch) and slowly turn toward the right.Hold the stretch for several seconds or longer.Release, switch sides, and turn to the left. Repeat about 5 to 10 times while switching sides. '),
            ),
            ListTile(
              leading: Icon(Icons.check),
              title: Text('Back bend. Especially later in your pregnancy, you may experience more back pain that doesn’t seem to go away. Gentle back bends help counteract the tendency to lean forward as your belly expands. Stand up straight with your feet hip width apart and your palms on the back of your hips. Slowly and gently (don’t bend too much, just about 15 to 20 degrees), lean back.Hold for about 20 seconds and slowly return upright.'),
            )
          ],
        ),
      ),
    );
  }
}