import 'package:flutter/material.dart';

import '../widgets/info_item.dart';
import '../widgets/profile_picture.dart';
import '../widgets/story_item.dart';
import '../widgets/tab_item.dart';

class ProfilePage extends StatelessWidget {
  //const ProfilePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle:  false,
        title: Row(
          children: [
            Text(
              "Sutanto",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Icon(Icons.arrow_drop_down,
             color: Colors.black,
            ),
          ],
        ),
        actions: [
          IconButton(onPressed: (){}, 
          icon: Icon(Icons.add_box_outlined), 
          color: Colors.black,),
          IconButton(onPressed: (){}, 
          icon: Icon(Icons.menu), 
          color: Colors.black,),

        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children :[
                ProfilePicture(),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InfoItem("Posts","999"),
                      InfoItem("Followers","999"),
                      InfoItem("Following","999"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "Sutanto",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,

              ),
              ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: RichText(
              text: TextSpan(
                text:"xxxxxxxx ",
                style: TextStyle(
                 color: Colors.black,
                ),
                children: [
                   TextSpan(
                text:"#xxxxx",
                style: TextStyle(
                 color: Colors.blue,
                ),
                   ),
                   TextSpan(
                text:"#bbbb",
                style: TextStyle(
                 color: Colors.blue,
                ),
                   ),
                ],

              )
              //text: "",
              
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "Link Goes here",
              style: TextStyle(
            color: Colors.blue,
              ),
              ),
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            // child: ElevatedButton(
            //   onPressed: (){},
            //   child: Text(
            //     "Edit Profile", 
            //     style: TextStyle(color: Colors.black,)),
            //   style: ElevatedButton.styleFrom(
            //     primary: Colors.white,
            //   ),
            // ),
            child: OutlinedButton(
              onPressed: (){},
              child: Text(
                "Edit Profile", 
                style: TextStyle(color: Colors.black,)
                ),
             // style: ElevatedButton.styleFrom(
               // primary: Colors.white,
              ),
            ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  StoryItem("Story 1"),
                  StoryItem("Story 2"),
                  StoryItem("Story 3"),
                  StoryItem("Story 4"),
                  StoryItem("Story 5"),
                  StoryItem("Story 6"),
                 
                ],
              ),
            ),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TabItem( active: true, icon: Icons.grid_on_outlined,),
                TabItem( active: true, icon: Icons.person_pin_outlined),
                TabItem( active: true, icon: Icons.person_pin_outlined),
                // Expanded(
                //   child: Icon(Icons.person_pin_outlined),
                // ),
               
               
              ],
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 213,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
             itemBuilder: (context,index)=> Image.network(
               //"https://picsum.photos/id/${index + 100}/536/354",
               "https://picsum.photos/536/354",
               fit: BoxFit.cover,)
             ),
             
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 4,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items:const [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home",),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search",),
          BottomNavigationBarItem(icon: Icon(Icons.movie_filter_rounded),label: "Movie",),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_rounded),label: "shop",),
         BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile",),
        ],
      ),
    );
  }
}




