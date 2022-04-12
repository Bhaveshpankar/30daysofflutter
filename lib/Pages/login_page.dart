// ignore_for_file: use_key_in_widget_constructors, camel_case_types, prefer_const_constructors, duplicate_ignore, avoid_print, unused_import

import "package:flutter/material.dart";
import 'package:flutter_application_1/utility/routes.dart';

class loginPage extends StatefulWidget {
  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
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
              "assets/images/login_image.png",
              fit: BoxFit.cover,
              height: 200,
            ),
            // ignore: prefer_const_constructors
            Text(
              "Welcome $name",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 2.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter Username",
                      labelText: "Username",
                    ),
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password",
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            InkWell(
              onTap: () async{
                setState(() {
                  changeButton = true;
                });

                await Future.delayed(Duration(seconds: 1));
                Navigator.pushNamed(context, MyRoutes.homeRoute);
              },
              child: AnimatedContainer(
                duration: Duration(seconds: 1),
                width: changeButton ? 50 : 150,
                height: 50,
                alignment: Alignment.center,
                child: changeButton
                    ? Icon(
                      Icons.done,
                      color: Colors.white,
                    )
                :Text(
                  "login",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    // shape: changeButton 
                    //     ? BoxShape.circle
                    //     : BoxShape.rectangle,
                    borderRadius: 
                    BorderRadius.circular(changeButton ? 50 : 8),                     
                    
                ),
              ),
            ),

            // ElevatedButton(
            //   child: Text("login"),
            //   style: TextButton.styleFrom(minimumSize: Size(120, 50)),
            //   onPressed: () {
            //     Navigator.pushNamed(context, MyRoutes.homeRoute);
            //   },
            // )
          ],
        ),
      ),
    );
  }
}
