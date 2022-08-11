import 'package:flutter/material.dart';
import 'package:food_delivery/src/pages/sign_up_page.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool _toggleVisibility = false;

  Widget _buildEmailTextField() {
    return TextFormField(
      decoration: InputDecoration(
          hintText: "Enter email or username",
          hintStyle: TextStyle(color: Color(0xFFBDC2CB), fontSize: 18.0)),
    );
  }

  Widget _buildPasswordTextField() {
    return TextFormField(
      maxLines: 1,
      obscureText: _toggleVisibility,
      decoration: InputDecoration(
          hintText: "Password ",
          suffixIcon: InkWell(
              onTap: () {
                setState(() {
                  _toggleVisibility = !_toggleVisibility;
                });
              },
              child: _toggleVisibility
                  ? Icon(Icons.visibility_off)
                  : Icon(Icons.visibility)),
          hintStyle: TextStyle(color: Color(0xFFBDC2CB), fontSize: 18.0)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Sign In',
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 100.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgotten Password?',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Card(
                  elevation: 5,
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        _buildEmailTextField(),
                        SizedBox(height: 20.0),
                        _buildPasswordTextField(),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Center(
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
                Divider(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?  ",
                        style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey)),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(onTap: (){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (BuildContext context) => SignUpPage()));
                    },
                      child: Text('Sign Up',
                          style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue)),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
