import 'package:flutter/material.dart';
import 'package:hello_world/app.dart';
import 'package:hello_world/auth.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Body(),
    );
  }
}

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final AuthService _authService = AuthService();
  late String name;
  TextEditingController controller = new TextEditingController();

  void _signInWithGoogle() async {
    var user = await _authService.signInWithGoogle();
    if (user != null) {
      name = user.displayName.toString();
      print("Hello");
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => MyHome(
                    name: name,
                  )));
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: ElevatedButton(
          onPressed: _signInWithGoogle,
          child: Text("Sign in with Google"),
        )
      ),
    );
  }
}
