import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodTile extends StatelessWidget {
  final food;
  const FoodTile({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(20)
      ),
      margin: EdgeInsets.only(left:15.0),
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        //image
        Image.asset(food.imagePath, height: 100,),
        //text
        Text(
          food.name,
          style:GoogleFonts.dmSerifDisplay(fontSize: 25)
        ),
        //price + rating
        SizedBox(
          width: 160,
          child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              //price
              Row(
                children: [
                  Text('\$' +food.price,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey[700]),),
                ],
              ),
              Padding(padding: EdgeInsets.all(20)),
              //rating
              Icon(Icons.star, color: Colors.yellow[800],),
              Text(food.rating, style: TextStyle(
                color: Colors.grey,
              ),)
            ],
          ),
        ),

      ]),
    );
  }
}