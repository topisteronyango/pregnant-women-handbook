import 'package:flutter/material.dart';
import 'navBar.dart';


class HealthsafetyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Health and Safety "),
      ),
      body: Column(
        children: [
          SizedBox(height: 20,),



          SizedBox(height: 20,),


          OutlinedButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NavBar()),
              );
            },
            child: Text(
              'WARNING SIGNS',
              style: TextStyle(fontSize: 20.0, color: Colors.white),


            ),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.pinkAccent),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.red),
                    )
                )
            ),


          ),


          SizedBox(height: 35,),








          OutlinedButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NavBar()),
              );
            },
            child: Text(
              'EMERGENCY INFO',
              style: TextStyle(fontSize: 20.0, color: Colors.white),


            ),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.pinkAccent),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.red),
                    )
                )
            ),


          ),
          SizedBox(height: 165,),




          Container(
            color: Color(0xFF551765),
            height: 220,
            child: Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Center(

                  child:Text(
                    'More up-to-date info on health & safety during pregnancy',
                    textAlign: TextAlign.center,
                    style:TextStyle(color: Colors.white, fontSize: 20),
                  )
              ),
            ),
          ),


          Container(
            color: Colors.deepPurple,
            height: 234.2,


            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(


                  children: [
                    Image.asset(
                      'assets/Images/social-care.png',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 16),
                    Text(
                      'SOCIAL \n SUPPORT',
                      style: TextStyle(
                          fontSize: 8,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Image.asset(
                      'assets/Images/advice.png',
                      width: 100,
                      height: 100,
                    ),
                    SizedBox(height: 16),
                    Text(
                      'MY DOCTOR',
                      style: TextStyle(fontSize: 8,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Image.asset(
                      'assets/Images/pregnancy.png',
                      width: 100,
                      height: 100,
                    ),
                    SizedBox(height: 16),
                    Text(
                      'PREGNANCY TRACKER',
                      style: TextStyle(fontSize: 8,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,),
                    ),
                  ],
                ),
              ],
            )
            ,
          ),
        ],




      ),
    );
  }
}
