import 'package:flutter/material.dart';
import 'package:hello_world/auth.dart';
import 'package:hello_world/database.dart';
import 'package:hello_world/login.dart';

class TextInputWidget extends StatefulWidget {
  final Function(String) callback;
  const TextInputWidget({super.key, required this.callback});

  @override
  State<TextInputWidget> createState() => _TextInputWidgetState();
}

class _TextInputWidgetState extends State<TextInputWidget> {
  final AuthService _authService = AuthService();
  final controller = TextEditingController();
  String text = "";

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  void clickButton() {
    text = controller.text;
    widget.callback(text);
    controller.clear();
    FocusScope.of(context).unfocus();
  }

  Future<void> _signOutWithGoogle() async {
    await _authService.signOut();
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(onPressed: _signOutWithGoogle, child: Text("Sign out")),
        TextField(
            controller: this.controller,
            // onChanged: (text) => this.changeText(text),
            decoration: InputDecoration(
                prefixIcon: const Icon(
                  Icons.message,
                ),
                labelText: "Your Message",
                suffixIcon: IconButton(
                    onPressed: clickButton, icon: Icon(Icons.send)))),
      ],
    );
  }
}
