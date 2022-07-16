import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SigninClass extends StatefulWidget {
  @override
  _SigninClassState createState() => _SigninClassState();
}

class _SigninClassState extends State<SigninClass> {
  //
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  //
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  Color color1 = Colors.white;

  @override

  //
  Widget build(BuildContext context) =>
      //

      //
      Scaffold(
          backgroundColor: Colors.grey[900],
          body: SafeArea(
              child: SingleChildScrollView(
                  child: Column(children: [
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: null,
                          icon: Icon(FontAwesomeIcons.language, color: color1)),
                      IconButton(
                          onPressed: null,
                          icon: Icon(FontAwesomeIcons.temperatureFull,
                              color: Colors.grey[900]))
                    ])),

            Container(
                margin: EdgeInsets.only(top: 50.0),
                height: 140.0,
                width: 180.0,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    image: DecorationImage(
                        fit: BoxFit.contain,
                        image: AssetImage(
                          'assets/sanad_logo.jpeg',
                        )))),

            SizedBox(height: 20.0),
            Container(
                padding: EdgeInsets.all(15.0),
                width: 300.0,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(5.0),
                    border: Border.all(color: Colors.white)),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        FontAwesomeIcons.fingerprint,
                        color: Colors.grey,
                      ),
                      Text('Sign in with Your Biometric ID',
                          style: TextStyle(color: Colors.white))
                    ])),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text('OR',
                  style: TextStyle(fontSize: 22, color: Colors.white)),
            ),

            //
            // login widget //
            //

            Container(
                padding: EdgeInsets.only(left: 15.0),
                width: 300.0,
                decoration: BoxDecoration(
                    color: Colors.grey[600],
                    borderRadius: BorderRadius.circular(5.0),
                    border: Border.all(color: Colors.white)),
                child: TextField(
                    autofocus: true,
                    cursorWidth: 5.0,
                    cursorRadius: Radius.circular(50.0),
                    cursorColor: Colors.green,
                    style: TextStyle(color: Colors.white),
                    textInputAction: TextInputAction.next,
                    controller: emailController,
                    decoration: InputDecoration(
                        icon: Icon(FontAwesomeIcons.user,
                            size: 15.0, color: Colors.white),
                        hintText: 'Email',
                        hintStyle: TextStyle(color: Colors.white)))),
            SizedBox(height: 5.0),

            Container(
                padding: EdgeInsets.only(left: 15.0),
                width: 300.0,
                decoration: BoxDecoration(
                    color: Colors.grey[600],
                    borderRadius: BorderRadius.circular(5.0),
                    border: Border.all(color: Colors.white)),
                child: TextField(
                    cursorWidth: 5.0,
                    cursorColor: Colors.green,
                    obscureText: true,
                    style: TextStyle(color: Colors.white),
                    textInputAction: TextInputAction.done,
                    controller: passwordController,
                    decoration: InputDecoration(
                        icon: Icon(FontAwesomeIcons.lock,
                            size: 15.0, color: Colors.white),
                        hintText: 'Password',
                        hintStyle: TextStyle(color: Colors.white)))),
            Container(
                width: 320.0,
                padding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 10.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(FontAwesomeIcons.square,
                          color: Colors.white, size: 18.0),
                      Text('Use Biometric ID',
                          style: TextStyle(fontSize: 13, color: Colors.white)),
                      Text('Forgot Password?',
                          style: TextStyle(fontSize: 13, color: Colors.white)),
                    ])),
            Container(
                height: 50.0,
                width: 300.0,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: TextButton(
                    onPressed: signIn,
                    child: Text('Sign in',
                        style:
                            TextStyle(color: Colors.white, fontSize: 20.0)))),
            Container(
                margin: EdgeInsets.symmetric(vertical: 30.0),
                width: 300,
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text('Dont have an account? ',
                      style: TextStyle(color: Colors.grey, fontSize: 15.0)),
                  Text('Sign Up',
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 15.0,
                          decoration: TextDecoration.underline))
                ]))
          ]))));
  Future signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim());
  }
}
