 import 'package:design/SignIn.dart';
import 'package:design/SignUp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login_page extends StatefulWidget {
  @override
  _Login_pageState createState() => _Login_pageState();
}

class _Login_pageState extends State<Login_page> {
  bool signupForm;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    signupForm = true;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          FractionallySizedBox(
            heightFactor: 0.5,
            child: Container(
              color: Colors.red[800]
            ),
          ),
          SingleChildScrollView(
            padding: const EdgeInsets.only(top: 113,left: 20,right: 20),
            child: Column(
              children: <Widget>[
                const SizedBox(height: kToolbarHeight - 16.0,),
                Container(
                  alignment: Alignment.topCenter,
                  height: (MediaQuery.of(context).size.height /2) - 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/image.jpg'),
                        fit: BoxFit.cover
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow:[
                      BoxShadow(
                        color: Colors.red,
                        offset: Offset(5,5),
                        blurRadius: 10.0,
                      ),
                    ],
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: ToggleButtons(
                          renderBorder: false,
                          selectedColor: Colors.red,
                          fillColor: Colors.transparent,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: Text(
                                'Sign Up',
                                style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: Text(
                                'Sign In',
                                style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                          isSelected: [signupForm,!signupForm],
                          onPressed: (index){
                            setState(() {
                              signupForm = index ==0;
                            });
                          },
                        ),
                      ),
                      AnimatedSwitcher(
                        duration: Duration(milliseconds: 200),
                        child: signupForm ? SignUP(): SignIn(),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Or Connect with',
                  style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Google',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                )

              ],
            ),

          )
        ],
      ),
    );
  }
}


