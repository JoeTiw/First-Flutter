import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MyDraw extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final imageUrl = "https://production-clubhouse-avatars.s3.amazonaws.com/5568188_f1fc1ecd-decf-49e1-a506-2a0a6786bfcc_thumbnail_250x250";
    return Drawer(
      child: Container(
        color: Colors.lightBlue,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              margin: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                ),
                accountName: Text("Bhupin Tiwari"),
                accountEmail: Text("bhupintiwari@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),

                ),

              ),
                ListTile(
                  leading: Icon(
                    CupertinoIcons.home,
                    color: Colors.white,
                  ),
                    title: Text(
                      "Home",
                      textScaleFactor: 1.3,
                      style: TextStyle(
                        color: Colors.white,
                         ),
                      
                      
                      ),


                ),

                ListTile(
                  leading: Icon(
                    CupertinoIcons.profile_circled,
                    color: Colors.white,
                  ),
                    title: Text(
                      "Profile",
                      textScaleFactor: 1.3,
                      style: TextStyle(
                        color: Colors.white,
                         ),
                      
                      
                      ),


                ),

                ListTile(
                  leading: Icon(
                    CupertinoIcons.mail,
                    color: Colors.white,
                  ),
                    title: Text(
                      "Email",
                      textScaleFactor: 1.3,
                      style: TextStyle(
                        color: Colors.white,
                         ),
                      
                      
                      ),


                )

          ],
        ),
      ),
      
    );
  }
}