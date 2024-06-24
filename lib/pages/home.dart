import "package:flutter/material.dart";
import "package:flutter_svg/flutter_svg.dart";

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color.fromARGB(255, 255, 255, 255);
    const lightgrayColor = Color.fromARGB(255, 245, 245, 245);
    return Scaffold(
      appBar: appBar(primaryColor, lightgrayColor),
      body:
        Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 40, left: 20, right: 20),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.11),
                    blurRadius: 40,
                    spreadRadius: 0.0
                  )
                ]
              ),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.all(15),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
          ],
        ),
    );
  }

  AppBar appBar(Color primaryColor, lightgrayColor) {
    return AppBar(
      backgroundColor: primaryColor,

      title: const Text(
        'Breakfast',
        style: TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            fontSize: 18,
            fontWeight: FontWeight.bold),
      ),

      // Left Side Button
      leading: GestureDetector(
        onTap: () {},
        child: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: lightgrayColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: SvgPicture.asset(
            'assets/icons/back.svg',
            height: 20,
            width: 20,
          ),
        ),
      ),

      // Right Side Button
      actions: [
        GestureDetector(
          onTap: () {},
          child: Container(
            alignment: Alignment.center,
            width: 40,
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: lightgrayColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: SvgPicture.asset(
              'assets/icons/three-dots.svg',
              height: 20,
              width: 20,
            ),
          ),
        ),
      ],

      centerTitle: true,
      elevation: 0.0,
    );
  }
}
