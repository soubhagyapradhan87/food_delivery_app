import 'package:flutter/material.dart';


class GreyBtn extends StatelessWidget {
  final String texT;
  final IconData icon;
  GreyBtn({this.texT,this.icon});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 70,
      decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(15.0)
      ),
      child: Row(
        children: [
          Icon(icon,color: Colors.white,size: 20),
          Text(texT,style: TextStyle(color: Colors.white),)
        ],
      ),
    );
  }
}
