import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi/pages/components/button.dart';

class HomePage extends StatelessWidget {
  
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color.fromARGB(255, 86, 42, 40),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(25.0),
          child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
          //Shop name
          SizedBox(
            height: 10,
          ),
          Text('SUSHI SHOP',
          style: GoogleFonts.dmSerifDisplay(
            fontSize: 25,
            color: Colors.white,
          ),
          textAlign: TextAlign.left,
          ),
        
          SizedBox(height: 20,),

          // Icon
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Image.asset('lib/images/sushi.png'),
          ),

          // title
          Text('THE TASTS OF JAPANS\n FOOD',
            style: GoogleFonts.dmSerifDisplay(
            fontSize: 35,
            color: Colors.white,
          ),),

          //Subtitle 
          Text('Feel the taste of the most popular japans food from anywhere from anytime',
          style: TextStyle(
            color: Colors.grey[200],
            height: 2,
          ) ,
          ),
          SizedBox(height: 10,),

          //get started button
          MyButton(text: 'Get Started',
          onTap: (){
            //onTap go the menue.
            Navigator.pushNamed(context, '/menupage');
          },
          )
            ],
          ),
        ),
      ),
    );
  }
}