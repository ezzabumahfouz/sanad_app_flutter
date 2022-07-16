import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'login_screens/home_screen_logedin.dart';
import 'not_login/home_screen.dart';

class MainClass extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  MainClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
      body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return LoginHomePage();
            } else {
              return HomeClass();
            }
          }));
}
