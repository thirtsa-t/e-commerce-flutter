import 'package:byosedealapp/BottomNavBar.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
              width: 1000,
              height: 1000,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1423784346385-c1d4dac9893a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8bW9iaWxlJTIwYnVzaW5lc3N8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"),
                fit: BoxFit.cover,
              ))),
          Container(
            margin: EdgeInsets.only(
              top: 40.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(right: 60.0, left: 20),
                    child: const Icon(
                      Icons.close,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20.0, left: 10.0),
                    child: const Text(
                      "Sign In/Register",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 40.0),
                    child: const Icon(
                      Icons.feedback_outlined,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                ]),
                const SizedBox(height: 40),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 90),
                      child: const Text(
                        "Welcome back",
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 200, right: 30, left: 30),
            child: SizedBox(
              width: 360,
              height: 40,
              child: RaisedButton(
                color: Color.fromARGB(255, 255, 254, 254),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BottomNavScreen()),
                  );
                  // if (_formkey.currentState.validate()) {
                  //   SigninUser();
                  //   print("Successful");
                  // } else {
                  //   print("Unsuccessfull");
                  // }
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                    side: BorderSide(color: Colors.white, width: 2)),
                textColor: Colors.black,
                child: Text("Facebook"),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 250),
            child: Row(children: const <Widget>[
              Expanded(
                child: Divider(
                  color: Colors.white,
                  indent: 70.0,
                  endIndent: 30.0,
                  thickness: 1,
                ),
              ),
              Text(
                "OR",
                style: TextStyle(color: Colors.white),
              ),
              Expanded(
                child: Divider(
                  color: Colors.white,
                  indent: 10.0,
                  endIndent: 90.0,
                  thickness: 1,
                ),
              ),
            ]),
          ),
          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.only(top: 300, right: 30, left: 30),
            child: SizedBox(
              width: 360,
              height: 40,
              child: RaisedButton(
                color: Color.fromARGB(255, 255, 254, 254),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BottomNavScreen()),
                  );
                  // if (_formkey.currentState.validate()) {
                  //   SigninUser();
                  //   print("Successful");
                  // } else {
                  //   print("Unsuccessfull");
                  // }
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                    side: BorderSide(color: Colors.white, width: 2)),
                textColor: Colors.black,
                child:

                    // Icon(Icons.facebook_outlined),
                    Text(
                  "Google",
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 380, right: 30, left: 30),
            child: SizedBox(
              width: 360,
              height: 40,
              child: RaisedButton(
                color: Color.fromARGB(255, 255, 254, 254),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BottomNavScreen()),
                  );
                  // if (_formkey.currentState.validate()) {
                  //   SigninUser();
                  //   print("Successful");
                  // } else {
                  //   print("Unsuccessfull");
                  // }
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                    side: BorderSide(color: Colors.white, width: 2)),
                textColor: Colors.black,
                child: Text("Contnue with Email"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
