import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi/pages/components/button.dart';
import 'package:sushi/pages/components/food_tile.dart';
import 'package:sushi/pages/components/models/food_model.dart';
import 'package:sushi/pages/components/theme/colors.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {

  //Food list
  List foodMenu = [
    //salom sushi
    Food(
      name: 'Salom Sushi', 
      price: '20.00', 
      imagePath: 'lib/images/salom_sushi.png', 
      rating: '4.9'),
    //nigiri
    Food(
      name: 'Nigiri Sushi', 
      price: '25.00', 
      imagePath: 'lib/images/nigiri.png', 
      rating: '4.3'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
         backgroundColor: Colors.transparent,
         elevation: 0,
         leading: Icon(Icons.menu, color: Colors.grey[900],),

         title: Text('SUSHI SHOP'),
         centerTitle: true,
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //promotion bunner
          Container(
            margin: EdgeInsets.symmetric(horizontal:25),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(color: primaryColor, borderRadius: BorderRadius.circular(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Column(
                  children: [
                    //bunner text
                    Text('Get 35% discount', style: GoogleFonts.dmSerifDisplay(
                      color: Colors.white,
                      fontSize: 20,
                    ),),

                    SizedBox(height: 20,),
                    //bunner button
                    MyButton(text: 'Redeem', onTap:(){

                    },),

                  ],
                ),
                //image
                Image.asset('lib/images/many_sushi.png', height: 100,)
              ],
            ),

          ), 
          SizedBox(height: 15,),

          //search bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:30.0),
            child: TextField(
              decoration :InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(color: Colors.white)
                ),
                ),
                
            ),
          ),
          SizedBox(height: 25,),
          //menue list
           Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Text('Food Menu',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.grey[800],
              fontSize: 18,
            ),),
            ),

          SizedBox(
            height: 10,
          ),
          Expanded(child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: foodMenu.length,
            itemBuilder: (context, index) => FoodTile(food: foodMenu[index]),
          )),
          SizedBox(height: 25,),

           //popular food

          //  Container(
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(20),
          //     color: Colors.grey[100]
          //     ),
          //     margin:const EdgeInsets.only(left: 25, right: 25,bottom: 25),
          //     padding: const EdgeInsets.all(20),
          //   // child: Row(
          //   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   // children: [
          //   //   Row(
          //   //     children: [
          //   //      //image
          //   //   Image.asset('lib/images/funtomaki.png', height: 60,),

          //   //   SizedBox(
          //   //     height: 10,
          //   //   ),

          //   //   //Name and price
          //   //   // Column(
          //   //   //   crossAxisAlignment: CrossAxisAlignment.start,
          //   //   //   children: [
          //   //   //     Text('Futomaki', style: GoogleFonts.dmSerifDisplay(fontSize: 18),),

          //   //   //     //price
          //   //   //     Text('\$22.00', style: TextStyle(color: Colors.grey[700]),)
          //   //   //   ],
          //   //   // ),
          //   //  // heart Icon
          //   // //  Icon(Icons.favorite_border_outlined,
          //   // //  color: Colors.grey[700],
          //   // //  )
          //   //     ],
          //   //   ),  


          //   // ]),
          //  ),
      
        ],
      ),
    );
  }
}