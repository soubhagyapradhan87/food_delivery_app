import 'package:flutter/material.dart';

class TopInfo extends StatefulWidget {
  @override
  _TopInfoState createState() => _TopInfoState();
}

class _TopInfoState extends State<TopInfo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text(
                  "Delivery to",
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),
                ),
                Row(
                  children: [
                    Icon(Icons.my_location),
                    Text(
                      "Talcher,Angul",
                      style: TextStyle(fontSize: 16.0,color: Colors.grey),
                    )
                  ],
                )
              ],
            ),
            GestureDetector(
              onTap: (){print("ok");},
              child: CircleAvatar(
                radius: 20.0,
                child: Icon(Icons.person_outline),
              ),
            )
          ],
        ),
        SizedBox(height: 15.0),
        Material(
          elevation: 5.0,
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
          child: TextField(
              style:TextStyle(color: Colors.black, fontSize: 16.0),
              cursorColor: Theme.of(context).primaryColor,
              decoration:InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 14.0),
                  suffixIcon: Material(
                      elevation: 2.0,
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      child: Icon(
                        Icons.search,
                        color: Colors.black,
                      )
                  ),
                  border:InputBorder.none,
                  hintText: "Search for dish and restaurant"
              )
          ),
        )
      ],
    );
  }
}
