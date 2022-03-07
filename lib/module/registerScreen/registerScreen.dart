import 'package:flutter/material.dart';
import 'package:untitled1/shared/drawer.dart';
class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: createDrawer(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65.0),
        child: AppBar(
          title: Text('Sign Up'),
          centerTitle: true,
        ),
      ),
      body: Center(
        child: Container(
          child: Text('Register'),
        ),
      ),
    );
  }
}
