import 'package:flutter/material.dart';
class CustomizedContainer extends StatelessWidget {
  const CustomizedContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),color: Colors.white
    ),clipBehavior:Clip.hardEdge ,
      
     
      child: Stack(
        children: [Image.asset(
          width: double.infinity,height: double.infinity,fit: BoxFit.cover,
            '../assets/images/laptops2.png'),Container(width: double.infinity,height:double.infinity ,color: Colors.black26.withOpacity(0.3),)]
      ),
    );
  }
}
