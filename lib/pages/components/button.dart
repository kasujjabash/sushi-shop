import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final void Function ()? onTap;
  const MyButton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ,
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 120, 61, 57),
          borderRadius: BorderRadius.circular(40)),
        padding: EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Button text
            Text(text,
            style: TextStyle(color: Colors.white,)),
            SizedBox(width: 20,),
            //icon
            Icon(Icons.arrow_forward_outlined,
            color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}