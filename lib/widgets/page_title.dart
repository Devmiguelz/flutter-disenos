import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [

            Text(
              'Classify transactions', 
              style: TextStyle(
                fontSize: 30, 
                fontWeight: FontWeight.bold, 
                color: Colors.white
              ),
            ),

            SizedBox(height: 10,),

            Text(
              'Classify this transaction into a particular category',
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.white
                ),
            ),

          ],
        ),
      ),
    );
  }
}