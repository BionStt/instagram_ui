import 'package:flutter/material.dart';

import 'pages/profile.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  //const ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfilePage(),
    
    );
  }
}

