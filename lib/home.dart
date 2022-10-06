import 'package:flutter/material.dart';
// import 'package:mobile_ramene/my_flutter_app_icons.dart';

void main() {
  runApp(
      const Home()
  );
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

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
  int _selectedIndex = 0;

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Container(
          alignment: Alignment.center,
          child: const Text(
            'Home',
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.bold,
              fontFamily: "Roboto",
            ),
          ),
        ),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 380,
            height: 55,
            margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Search',
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
              //     return 'email is empty';
              //   }
              //   return null;
              // },
            ),
          ),

          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.fromLTRB(10, 15, 20, 0),
            child: const Text(
              'Top menu',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: "Roboto",
              ),
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                // margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Image.asset(
                  'assets/images/udon1.png',
                  width: 150,
                  height: 150,
                ),
              ),

              Container(
                // margin: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                child: Image.asset(
                  'assets/images/udon2.png',
                  width: 150,
                  height: 150,
                ),
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Image.asset(
                  'assets/images/udon3.png',
                  width: 150,
                  height: 150,
                ),
              ),

              Container(
                margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Image.asset(
                  'assets/images/udon4.png',
                  width: 150,
                  height: 150,
                ),
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Image.asset(
                  'assets/images/udon5.png',
                  width: 150,
                  height: 150,
                ),
              ),

              Container(
                margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Image.asset(
                  'assets/images/udon6.png',
                  width: 150,
                  height: 150,
                ),
              ),
            ],
          ),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        selectedFontSize: 20,
        selectedIconTheme: IconThemeData(
          color: Color(0xffFFA600),
          size: 20,
        ),
        selectedItemColor: Color(0xffFFA600),
        selectedLabelStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontFamily: "Roboto",
        ),
        unselectedIconTheme: IconThemeData(
          color: Colors.black12,
        ),
        unselectedItemColor: Colors.black12,

        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.schedule),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Account',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
