import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> Main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(NewSymp());
}

class NewSymp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  final Stream<QuerySnapshot> users =
      FirebaseFirestore.instance.collection('users').snapshots();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('new symptom page'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'SYMPTOMS REGISTERED',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            Container(
                height: 120,
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: StreamBuilder<QuerySnapshot>(
                  stream: users,
                  builder: (
                    BuildContext context,
                    AsyncSnapshot<QuerySnapshot> snapshot,
                  ) {
                    if (snapshot.hasError) {
                      return Text('something went wrong');
                    }
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Text('Loading');
                    }

                    final data = snapshot.requireData;
                    return ListView.builder(
                      itemCount: data.size,
                      itemBuilder: (context, index) {
                        return Text('=> ${data.docs[index]['symptom']}');
                      },
                    );
                  },
                )),
            Text(
              'ENTER YOUR SYMPTOMS DETAILS',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            MyCustomForm(),
          ],
        ),
      ),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();

  var symptom = '';

  @override
  Widget build(BuildContext context) {
    CollectionReference users = FirebaseFirestore.instance.collection('users');
    return Form(
        key: _formKey,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.sick),
                  hintText: 'what is your symptom?',
                  labelText: 'symptom',
                ),
                onChanged: (value) {
                  symptom = value;
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'please enter some text';
                  }
                  return null;
                },
              ),
              // SizedBox(height: 5),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text('storing your data'),
                      ));

                      users
                          .add({'symptom': symptom})
                          .then((value) => print('user added'))
                          .catchError(
                              (error) => print('Failed to add user: $error'));
                    }
                  },
                  child: Text('submit'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors
                        .deepPurple, // Change the background color of the button
                    shape: RoundedRectangleBorder(
                      // Change the border radius of the button
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10), // Change the padding of the button
                  ),
                ),
              ),
            ]));
  }
}
