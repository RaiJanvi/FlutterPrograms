import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:icecream_shops/Strings.dart';
import 'package:icecream_shops/custom_textField.dart';

class MyLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.white, Colors.blueAccent])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: login_body(),
      ),
    );
  }
}

class login_body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.10),
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                Text(
                  Strings.signIn,
                  style: TextStyle(
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Icon(
                  Icons.person_rounded,
                  size: 70.0,
                  color: Colors.black54,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            padding: EdgeInsets.only(
              right: 35,
              left: 35,
            ),
            child: Column(
              children: [
                CustomTextField(
                  hintText: Strings.email,
                  icon: Icons.email,
                  obscure: false,
                ),
                SizedBox(
                  height: 20.0,
                ),
                CustomTextField(
                  hintText: Strings.password,
                  icon: Icons.lock_outline,
                  obscure: true,
                ),
                Container(
                  margin: EdgeInsets.only(top: 30.0),
                  height: 50.0,
                  width: 300.0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: ElevatedButton(
                        style: ButtonStyle(
                          elevation: MaterialStateProperty.all(14.0),
                          backgroundColor:
                              MaterialStateProperty.resolveWith((states){
                                if (states.contains(MaterialState.hovered))
                                  return Colors.blueGrey[50];
                                else
                                  return Colors.white;
                              }),
                          overlayColor:
                              MaterialStateProperty.resolveWith((states) {
                            if (states.contains(MaterialState.pressed))
                              return Colors.grey[350];
                          }),
                        ),
                        child: Text(
                          Strings.login,
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.lightBlueAccent,
                          ),
                        ),
                        onPressed: () {
                         Navigator.pushNamed(context, 'shop_list');
                        }),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  Strings.or,
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  Strings.signInWith,
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                FittedBox(
                  fit: BoxFit.contain,
                  child: Row(
                    children: [
                      Image.asset(
                        "images/facebook.png",
                        height: 50.0,
                        width: 50.0,
                      ),
                      SizedBox(
                        width: 30.0,
                      ),
                      Image.asset(
                        "images/google.png",
                        height: 50.0,
                        width: 50.0,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                FittedBox(
                  fit: BoxFit.contain,
                  child: Row(
                    children: [
                      Text(Strings.noAcc),
                      Text(
                        Strings.signUp,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          decoration: TextDecoration.underline,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
