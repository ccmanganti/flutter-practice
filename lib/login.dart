import 'package:flutter/material.dart';
import 'package:hello_world/app.dart';
import 'post.dart';

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
  late String name;
  TextEditingController controller = new TextEditingController();

  void login() {
    name = controller.text;
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => MyHome(
          name: name,
        )
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              child: TextField(
                controller: controller,
                decoration: InputDecoration(
                    labelText: "Username",
                    prefixIcon: Icon(Icons.portrait),
                    suffixIcon: IconButton(
                      onPressed: login,
                      icon: Icon(Icons.login),
                      tooltip: "Login",
                    )),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: login,
            child: Text("Login"),
          )
        ],
      ),
    );
  }
}
