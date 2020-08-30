import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.0,right: 10.0),
      height: 114,
      width: 105,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.red
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset("images/fastffood.svg",color: Colors.white,height: 70,width: 70,),
          Text("Food",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.white),),
          Text("20 Places",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.white),),
        ],
      ),
    );
  }
}
