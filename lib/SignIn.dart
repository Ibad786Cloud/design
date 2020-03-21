import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.all(16),
                hintText: 'Enter your Email'
            ),
          ),
          SizedBox(
            height: 16,
          ),
          TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.all(16),
                hintText: 'Password',
                prefixStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 32),
            child: RaisedButton(
              elevation: 0,
              highlightElevation: 0,
              textColor: Colors.white,
              color: Colors.red,
              onPressed: (){},
              child: Text(
                'Sign In',
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
