import "package:flutter/material.dart";

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color.fromARGB(255, 255, 255, 255);
    const lightgrayColor = Color.fromARGB(255, 245, 245, 245);
    return Scaffold(
      appBar: appBar(primaryColor, lightgrayColor),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 40, left: 20, right: 20),
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.11),
                  blurRadius: 40,
                  spreadRadius: 0.0)
            ]),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: IconButton(
                onPressed: (){
                  print("Hello World");
                },
                icon: const Icon(Icons.search, size: 20)),
                suffixIcon: IconButton(
                  onPressed: (){
                    print("Hello World");
                  },
                  icon: const Icon(Icons.filter_list_rounded, size: 20)),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: const EdgeInsets.all(15),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none,
                  ),
              ),
            ),
          ),
          Container(
          ),
        ],
      ),
    );
  }

  void something() {
    print("Hello Flutter");
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
          child: IconButton(
              onPressed: (){
                print("Hello World");
              },
              icon: const Icon(Icons.arrow_back_ios_outlined, size: 15)),
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
            child: IconButton(
              onPressed: (){
                print("Hello World");
              },
              icon: const Icon(Icons.more_horiz, size: 15)),
          ),
        ),
      ],

      centerTitle: true,
      elevation: 0.0,
    );
  }
}
