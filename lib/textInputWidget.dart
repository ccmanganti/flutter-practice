import 'package:flutter/material.dart';


class TextInputWidget extends StatefulWidget {
  final Function(String) callback;
  const TextInputWidget({super.key, required this.callback});

  @override
  State<TextInputWidget> createState() => _TextInputWidgetState();
}

class _TextInputWidgetState extends State<TextInputWidget> {
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

  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: this.controller,
        // onChanged: (text) => this.changeText(text),
        decoration: InputDecoration(
            prefixIcon: const Icon(
              Icons.message,
            ),
            labelText: "Your Message",
            suffixIcon:
                IconButton(onPressed: clickButton, icon: Icon(Icons.send))));
  }
}