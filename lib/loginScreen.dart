import 'package:flutter/material.dart';
import 'package:loginscreen/homeScreen.dart';
import 'package:loginscreen/main.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({Key? key}) : super(key: key);



  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {

  final _username=TextEditingController();
  final _password=TextEditingController();
  bool _validateUserName = false;
  bool _validatePassword = false;

  @override
  Widget build(BuildContext context) {
    return Column(
        children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: Form(

              child: Container(
                margin: const EdgeInsets.only( left:20.0, top:10.0),
                child: Text(
                    'Log in to your account',
                    style:TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    )
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.only(right: 10.0, left:15.0, top:5.0),
            child: TextField(
              style: TextStyle(
                backgroundColor: Colors.white,
              ),

              decoration: InputDecoration(
                hintText: 'Your Email',
                errorText:_validateUserName?'Email cannot be null':null,
                border: OutlineInputBorder(),
                fillColor: Colors.white,
                filled: true,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(5),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
              controller: _username,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.only(right: 10.0, left:15.0, top:5.0),
            child: TextFormField(
              style: TextStyle(
                backgroundColor: Colors.white,
              ),

              decoration: InputDecoration(
                hintText: 'Password',
                errorText: _validatePassword?'Password cannot be null':null,
                border: OutlineInputBorder(),
                fillColor: Colors.white,
                filled: true,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(5),
                ),
                focusedBorder:UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
              controller: _password,
            ),
          ),
          Container(
              height: 50,
              width: MediaQuery.of(context).size.width/1.2,
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: ElevatedButton(
                style:ElevatedButton.styleFrom(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  backgroundColor: Color(0xFF20B2AA),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20), // <-- Radius
                  ),
                ),
                child: const Text('CONTINUE', style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),) ,
                onPressed: () {
                  setState((){
                    _username.text.isEmpty?_validateUserName=true:_validateUserName=false;
                    _password.text.isEmpty?_validatePassword=true:_validatePassword=false;
                  });
                  Navigator.pushNamed(context, 'page2');
                  Text('Go to Page2');
                },
              )
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
                'Forgot Your Password',
                style:TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: Color(0xFF20B2AA),
                )
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  width: 10,
                  padding: const EdgeInsets.fromLTRB(30, 0, 10, 0),
                  child: Divider(
                    height: 1,
                    color: Colors.black,
                    thickness: 1,
                  ),
                ),
              ),
              Text('or', style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16
              ),),
              Expanded(
                child: Container(
                  width: 40,
                  padding: const EdgeInsets.fromLTRB(10, 0, 30, 0),
                  child: Divider(
                    height: 1,
                    color: Colors.black,
                    thickness: 1,
                  ),
                ),
              ),
            ],
          ),
          InkWell(
              child: Container(
                  width: MediaQuery.of(context).size.width/1.3,
                  height: 40,
                  margin: EdgeInsets.only(top: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color:Colors.white
                  ),
                  child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Icon(Icons.backup_outlined)
                          ),
                          Align(
                            alignment: Alignment.center,
                            child:  Text('CONTINUE WITH GOOGLE',
                              style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black
                              ),
                            ),
                          )

                        ],
                      )
                  )
              ),
              onTap: () {
              }
          ),
          InkWell(
              child: Container(
                  width: MediaQuery.of(context).size.width/1.3,
                  height: 40,
                  margin: EdgeInsets.only(top: 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color:Colors.white
                  ),
                  child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Icon(Icons.backup_outlined)
                          ),
                          Align(
                            alignment: Alignment.center,
                            child:  Text('CONTINUE WITH FACEBOOK',
                              style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black
                              ),
                            ),
                          )

                        ],
                      )
                  )
              ),
              onTap: () {
              }
          ),
          Row(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: const EdgeInsets.only( left:35.0, top:30.0),
                  child: Text(
                      'Dont have an account.?',
                      style:TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      )
                  ),

                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: const EdgeInsets.only( left:5.0, top:30.0),
                  child: Text(
                      'Sign Up',
                      style:TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF20B2AA),
                      )
                  ),

                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: const EdgeInsets.only( left:35.0, top:10.0),
              child: Text(
                  'Privacy Policy',
                  style:TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF20B2AA),
                  )
              ),
            ),
          ),
        ]
    );
  }
}
