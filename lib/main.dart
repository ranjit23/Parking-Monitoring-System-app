import 'package:flutter/material.dart';
import 'package:parking/screens/wrapper.dart';
import 'package:provider/provider.dart';
import 'package:parking/services/auth.dart';
import 'package:parking/models/user.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        home: Wrapper(),
      ),
    );
  }
}
