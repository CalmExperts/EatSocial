import 'package:eat_social_flutter/models/user.dart';
import 'package:eat_social_flutter/screens/wrapper.dart';
import 'package:eat_social_flutter/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application..
  @override
  Widget build(BuildContext context) {
    /// wrapping root widget with Provider (stream provider)
    /// so that we can listen to user auth change event using
    /// `user` stream
    return StreamProvider<User>.value(
      /// making use of `user` stream
      value: AuthService().user,
      child: MaterialApp(
        home: Wrapper(),
      ),
    );
  }
}
