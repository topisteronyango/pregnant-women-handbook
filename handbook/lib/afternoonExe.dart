import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AfternoonExercise extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Afternoon Exercise when pregnant'),
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
              title: Text('Shoulder stretch. For back pain, stretching is just as important as toning. This yoga ball exercise can help deepen your stretch gently.Kneel on the floor with your ball in front of you, holding it on either side with your hands.As you roll the ball forward, sit back on your hips and keep your gaze downward.Stretch as much or as little as needed and hold for a few seconds.Return to a kneeling position and repeat a handful of times.'),
            ),
            ListTile(
              leading: Icon(Icons.check),
              title: Text('Wall push-up. Push-ups are a go-to exercise for building core strength, but they’re not so easy when you have a big belly bump! During pregnancy, use a wall to support yourself when doing this traditional core exercise.Face a wall and lean forward, placing your hands flat against the wall and with your arms straight.Keep your hands and feet about the same width as your shoulders.Engage your abs and slowly bend your elbows, lowering your chest to the wall until your chin is near the wall.Hold for one or two seconds and then straighten your arms.Repeat about 5 to 10 times.'),
            )
          ],
        ),
      ),
    );
  }
}