import 'package:flutter/material.dart';
import 'login.dart';

void main() {
  runApp(
      const MyApp()
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ramen',
      theme: ThemeData(
        // canvasColor: const Color(0xFFfafafa),
        // primarySwatch: Colors.orange,
      ),
      home: const MyHomePage(title: 'Mobile Ramene'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Hello World"),
      //   backgroundColor: Colors.white,
      // ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // mainAxisSize: MainAxisSize.max,
        // crossAxisAlignment: CrossAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.fromLTRB(130, 40, 130, 0),
            // padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            // margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Image.asset(
              'assets/images/ramen.png',
              width: 70,
              height: 70,
            ),
          ),

          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.fromLTRB(54, 24, 54, 0),
            child: Image.asset(
              'assets/images/ramen2.png',
              height: 260,
              width: 260,
            ),
          ),

          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.fromLTRB(87, 45, 87, 0),
            child: const Text(
              "All your\nfavourite ramen",
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontFamily: "Roboto",
              ),
              textAlign: TextAlign.center,
            ),
          ),

          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.fromLTRB(30, 12, 30, 0),
            child: const Text(
              "Delicious as is or tossed with your\nfavorite ingredients",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black38,
                fontWeight: FontWeight.normal,
                fontFamily: "Roboto",
              ),
              textAlign: TextAlign.center,
            ),
          ),

          Container(
            width: 380,
            height: 55,
            margin: const EdgeInsets.fromLTRB(20, 40, 20, 0),
            child: ElevatedButton(
              style: TextButton.styleFrom(
                backgroundColor: const Color(0xffFFA600),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Login())
                );
              },
              child: const Text(
                "Login",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Roboto",
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),

          Container(
            width: 380,
            height: 55,
            margin: const EdgeInsets.fromLTRB(20, 10, 20, 0),
            child: OutlinedButton(
              style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {},
              child: const Text(
                "Sign Up",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black38,
                  fontWeight: FontWeight.normal,
                  fontFamily: "Roboto",
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
