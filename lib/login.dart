import 'package:flutter/material.dart';
import 'home.dart';
import 'package:mobile_ramene/my_flutter_app_icons.dart';

void main() {
  runApp(
      const Login()
  );
}

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ramen',
      theme: ThemeData(
        // canvasColor: const Color(0xFFfafafa),
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
      resizeToAvoidBottomInset: false,
        // appBar: AppBar(
        //   title: const Text("Hello World"),
        //   backgroundColor: Colors.white,
        // ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(10, 38, 20, 0),
            child: IconButton(
              iconSize: 24,
              icon: const Icon(
                MyFlutterApp.left_arrow,
                color: Colors.black,
              ),
              onPressed: (){
                Navigator.of(
                    context,
                    rootNavigator: true).pop(context);
              },
            ),
          ),

          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.fromLTRB(10, 25, 20, 0),
            child: const Text(
              "Welcome Back",
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
            margin: const EdgeInsets.fromLTRB(10, 6, 20, 0),
            child: const Text(
              "Login to your account",
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
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.fromLTRB(10, 20, 20, 0),
            child: const Text(
              "Email",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.normal,
                fontFamily: "Roboto",
              ),
              textAlign: TextAlign.center,
            ),
          ),

          Container(
            width: 380,
            height: 55,
            margin: const EdgeInsets.fromLTRB(20, 8, 20, 0),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Email',
                hintStyle: const TextStyle(
                  fontSize: 16,
                  color: Colors.black38,
                  fontWeight: FontWeight.normal,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              // validator: (value) {
              //   if (value!.isEmpty) {
              //     return 'email is empty';
              //   }
              //   return null;
              // },
            ),
          ),

          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.fromLTRB(10, 20, 20, 0),
            child: const Text(
              "Password",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.normal,
                fontFamily: "Roboto",
              ),
              textAlign: TextAlign.center,
            ),
          ),

          Container(
            width: 380,
            height: 55,
            margin: const EdgeInsets.fromLTRB(20, 8, 20, 0),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Password',
                hintStyle: const TextStyle(
                  fontSize: 16,
                  color: Colors.black38,
                  fontWeight: FontWeight.normal,
                  fontFamily: "Roboto",
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              // validator: (value) {
              //   if (value!.isEmpty) {
              //     return 'password is empty';
              //   }
              //   return null;
              // },
            ),
          ),

          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.fromLTRB(10, 14, 20, 0),
            child: const Text(
              "Forget Password?",
              style: TextStyle(
                fontSize: 16,
                color: Color(0xffFFA600),
                fontWeight: FontWeight.normal,
                fontFamily: "Roboto",
              ),
              textAlign: TextAlign.center,
            ),
          ),

          Container(
            width: 380,
            height: 55,
            margin: const EdgeInsets.fromLTRB(20, 150, 20, 0),
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
                    MaterialPageRoute(builder: (context) => const Home())
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

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                child: const Text(
                  "Don't have an account yet?",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black38,
                    fontWeight: FontWeight.normal,
                    fontFamily: "Roboto",
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              Container(
                margin: const EdgeInsets.fromLTRB(5, 20, 20, 0),
                child: const Text(
                  "Sign Up",
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xffFFA600),
                    fontWeight: FontWeight.normal,
                    fontFamily: "Roboto",
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
