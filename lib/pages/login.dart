import 'package:flutter/material.dart';
import 'package:login/services/loginMode.dart';
import 'package:http/http.dart' as http;

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

Future<LoginPost> login(String email, String pwd) async {
  // final String apiUrlLogin = "http://127.0.0.1:5000/login";
  // var response =
  //     await http.post(apiUrlLogin, body: {"email": email, "password": pwd});
  // if (200 == response.statusCode) {
  //   final String loginData = response.body;
  //   return (loginPostFromJson(loginData));
  // } else {
  //   return null;
  // }
}

class _LoginState extends State<Login> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool _obscureText = true;
  LoginPost _data;

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.white,
          body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
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
                SizedBox(height: 20.0),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Hello there, \nWelcome Back',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ])),
                SizedBox(height: 20.0),
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: Column(children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(20.0, 10.0, 0.0, 0.0),
                      child: TextField(
                        controller: emailController,
                        style: TextStyle(color: Colors.green[800]),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Email",
                            hintStyle: TextStyle(color: Colors.green[800])),
                      ),
                    ),
                    const Divider(
                      color: Colors.black,
                      thickness: 2,
                      indent: 15.0,
                      endIndent: 15.0,
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(20.0, 10.0, 0.0, 0.0),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 6,
                            child: TextField(
                              controller: passwordController,
                              obscureText: _obscureText,
                              style: TextStyle(color: Colors.green[800]),
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Password",
                                  hintStyle:
                                      TextStyle(color: Colors.green[800])),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: IconButton(
                              onPressed: _toggle,
                              icon: Icon(
                                _obscureText == true
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                size: 25.0,
                                color: Colors.green[800],
                              ),
                              color: Colors.purpleAccent,
                              iconSize: 10,
                            ),
                          )
                        ],
                      ),
                    ),
                    const Divider(
                      color: Colors.black,
                      thickness: 2,
                      indent: 15.0,
                      endIndent: 15.0,
                    ),
                    SizedBox(height: 20.0),
                    Center(
                      child: InkWell(
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(color: Colors.greenAccent[700]),
                        ),
                        onTap: () {
                          print("Forgot Password?");
                        },
                      ),
                    ),
                    SizedBox(height: 20.0),
                    InkWell(
                      onTap: () async {
                        final String email = emailController.text;
                        final String pwd = passwordController.text;
                        // final LoginPost data = await login(email, pwd);
                        print(email + pwd);
                        // setState(() {
                        //   _data = data;
                        // });
                      },
                      child: Container(
                          height: 50,
                          margin: EdgeInsets.symmetric(horizontal: 60.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Color.fromRGBO(15, 157, 88, 1),
                          ),
                          child: Center(
                            child: Text(
                              'Login',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 3.0),
                            ),
                          )),
                    ),
                    SizedBox(height: 20.0),
                    Center(
                      child: InkWell(
                        onTap: () {
                          print("Create Acoount");
                        },
                        child: Text(
                          'Create Account',
                          style: TextStyle(color: Colors.greenAccent[700]),
                        ),
                      ),
                    ),
                  ]),
                ),
              ]),
        ),
      ),
    );
  }
}
