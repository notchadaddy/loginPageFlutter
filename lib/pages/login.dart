import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: SafeArea(
                child: Scaffold(
           resizeToAvoidBottomInset: false,
           backgroundColor: Colors.purple[900],
           body:Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children : <Widget>[
              Container(
              height: 200,
              child: Stack(
                children: <Widget>[
                    Positioned(
                      child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/top.png"),
                          ),
                              ),
                            ),
                        ),
                        ],
                      ),
                    ),
              SizedBox(
                    height:20.0
                  ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal:20.0),
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Hello there, \nWelcome Back',
                      style: TextStyle(
                        fontSize:30,
                        color:Colors.white,
                        fontWeight:FontWeight.bold
                      ),
                    ),
                    ]
                  )
                ),
                SizedBox(
                    height:20.0
                  ),
                Container(
                  padding : EdgeInsets.all(10.0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding : EdgeInsets.fromLTRB(20.0, 10.0, 0.0, 0.0),
                        child:TextField(
                          decoration: InputDecoration(
                            border : InputBorder.none,
                            hintText:"Username or email",
                            hintStyle:TextStyle(color: Colors.white)
                          ),
                        ),
                      ),
                      const Divider(
                      color: Colors.white,
                      thickness: 2,
                      indent: 15.0,
                      endIndent: 15.0,
                    ),
                      Container(
                        padding : EdgeInsets.fromLTRB(20.0, 10.0, 0.0, 0.0),
                        child:TextField(
                          decoration: InputDecoration(
                            border : InputBorder.none,
                            hintText:"Password",
                            hintStyle:TextStyle(color: Colors.white)
                          ),
                        ),
                      ),
                      const Divider(
                      color: Colors.white,
                      thickness: 2,
                      indent: 15.0,
                      endIndent: 15.0,
                    ),
                    SizedBox(
                  height:20.0
                ),
                  Center(child: Text('Forgot Password?',
                      style: TextStyle(
                        color: Colors.purpleAccent
                      ),
                      ),
                  ),
                  SizedBox(
                    height:20.0
                  ),
                  Container(
                      height:50,
                      margin:EdgeInsets.symmetric(horizontal:60.0),  
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color.fromRGBO(49, 39, 79, 1),
                      ),
                      child:Center(
                          child: Text('Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 3.0
                      ),
                      ),
                      )
                  ),
                  SizedBox(
                    height:20.0
                  ),
                  Center(child: Text('Create Account',
                      style: TextStyle(
                        color: Colors.purpleAccent
                      ),
                      ),
                  ),
                ]
                ),
                ),
                
             ]
           ),
         ),
       ),
    );
  }
}