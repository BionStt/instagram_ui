import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
            //color: Colors.amber,
            gradient: LinearGradient(
              colors: [Colors.red,
              Colors.amber,
              ]
            ),
            borderRadius: BorderRadius.circular(60),
          ) ,
        ),
         Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            image: DecorationImage(image: NetworkImage("https://picsum.photos/536/354"),
            fit: BoxFit.cover,
            ),
            //color: Colors.blue,
            border: Border.all(
              color: Colors.white,
              width: 5,
            ),
            // gradient: LinearGradient(
            //   colors: [Colors.red,
            //   Colors.amber,
            //   ]
            // ),
            borderRadius: BorderRadius.circular(60),
          ) ,
        ),
      ],
    );
  }
}