import "package:flutter/material.dart";

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue.shade600,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20)
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: FlutterLogo(
                      size: 40,
                    ),
                  ),
                  Text("Sample Text Flutter"),
                  Text("This is a subtext")
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
