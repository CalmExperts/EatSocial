import 'package:eat_social_flutter/models/user.dart';
import 'package:eat_social_flutter/screens/authenticate/authenticate.dart';
import 'home/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /// we have `StreamProvider` on root widget
    /// and `Wrapper` is child widget of `StreamProvider`
    /// so whenever auth changes, we'll get `user` stream
    /// `User` object if Signed In
    /// `null` if User Signs Out
    final user = Provider.of<User>(context);
    print(user);

    // return either the Home or Authenticate widget
    if (user == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}
