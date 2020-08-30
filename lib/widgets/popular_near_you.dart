import 'package:flutter/material.dart';
import 'package:food_delivery_app/widgets/grey_button.dart';

class Popularnearyou extends StatefulWidget {
  @override
  _PopularnearyouState createState() => _PopularnearyouState();
}

class _PopularnearyouState extends State<Popularnearyou> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          child: Container(
            height: 280,
            width: 350,
            color: Colors.white,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                child: Container(
                  height: 180,
                  width: 330,
                  color: Colors.blue,
                  child: Image(
                    image: AssetImage(
                        "images/lunch.jpeg"
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 5.0,),
              Text("Mc Donald's - Thai Ha",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),),
              Text("Western cuisine,fastFood",style: TextStyle(fontSize: 14.0,color: Colors.grey),),
            Container(
              width: 330,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.star,color: Colors.blue,size: 20,),
                      Icon(Icons.star,color: Colors.blue,size: 20,),
                      Icon(Icons.star,color: Colors.blue,size: 20,),
                      Icon(Icons.star,color: Colors.blue,size: 20,),
                    ],
                  ),
                  Row(
                    children: [
                      GreyBtn(texT: "2.5km",icon: Icons.location_on,),
                      GreyBtn(texT: "30min",icon: Icons.access_time,)
                    ],
                  ),
                ],
              ),
            ),
            ],
          ),
        ),
      ],
    );
  }
}
