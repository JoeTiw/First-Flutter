import 'package:flutter/material.dart';
import 'package:hello_world/utilis/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String name = "";
  bool changeButton = false;


  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assests/images/login_image.png",
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Welcome $name",
              style: TextStyle(
                fontSize: 27,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
      /*----------------------------------create username and password ------------------------------------------------------- */
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: " Enter Username",
                      labelText: "Username",
                    ),
                    onChanged: (value){
                      name = value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: " Enter Password",
                      labelText: "Password",
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                 
                 InkWell(
                   onTap: () async {
                     setState(() {
                       changeButton = true;
                     });

                     await Future.delayed(Duration(seconds: 1));
                     Navigator.pushNamed(context, MyRoutes.homeRoute);
                   },
                   child: AnimatedContainer(
                          duration: Duration(seconds: 1) ,
                          width: changeButton?50 : 100,
                          height: 50,
                          alignment: Alignment.center,
                          child: changeButton
                          ?Icon(Icons.done, 
                          color: Colors.white,
                          )
                          
                         :Text ("Login", 
                          style: TextStyle(color: Colors.white, 
                          fontWeight: FontWeight.bold, 
                          fontSize: 19),
                          ),
                          decoration: BoxDecoration(
                            color:Colors.deepPurple,
                            //shape: changeButton
                           // ?BoxShape.circle
                           // :BoxShape.rectangle,
                            borderRadius: 
                            BorderRadius.circular(
                              changeButton ? 50 : 7)
                              ),
                 
                   ),
                 ),








              /*   
                  ElevatedButton(
                    child: Text("Login"),
                   
                    style: TextButton.styleFrom(minimumSize: Size(100,40)),
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                  ),

                  */
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
