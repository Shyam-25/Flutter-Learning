import 'package:flutter/material.dart';
import 'package:loginscreen/loginScreen.dart';

class homeScren extends StatefulWidget {
  const homeScren({Key? key}) : super(key: key);

  @override
  State<homeScren> createState() => _homeScrenState();
}

class _homeScrenState extends State<homeScren> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(20)
          ),
          child: Text('Button'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
  }
