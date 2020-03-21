
import 'package:flutter/material.dart';

class SignUP extends StatefulWidget {
  @override
  _SignUPState createState() => _SignUPState();
}

class _SignUPState extends State<SignUP> {
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
                hintText: 'Phone',
              prefixText: "+922",
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
                'Sign up',
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
