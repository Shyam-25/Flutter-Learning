import 'package:flutter/material.dart';
import 'package:loginscreen/listViewScreen.dart';
import 'package:loginscreen/loginScreen.dart';

import 'homeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  final screens = [
    Center(child: Text('Home', style: TextStyle(fontSize: 30),),),
    listViewScreen(),
    Center(child: Text('Destinations', style: TextStyle(fontSize: 30),),),
      Navigator(onGenerateRoute: (settings) {
      Widget page = loginScreen();
      if (settings.name == 'page2') page = homeScren();
      return MaterialPageRoute(builder: (_) => page);
      },
      )
      ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        actions: <Widget>[
          new Container(),
          Center(
              child: Container(
                margin: const EdgeInsets.only(right: 20.0),
                child:  Align(
                  child: Image.asset("assets/Images/optisol_logo.png",
                    fit: BoxFit.cover,
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width*0.3,),
                ),
              )),
        ],
      ),
      body: screens[_currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: ('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_offer_outlined),
            label: ('Offers'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: ('Destinations'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_bus_filled_sharp),
            label: ('Accounts'),
          ),
        ],
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      backgroundColor: Color(0xFFF5F5F5),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
