import 'package:flutter/material.dart';

class listViewScreen extends StatefulWidget {
  const listViewScreen ({Key? key}) : super(key: key);

  @override
  State<listViewScreen> createState() => _listViewScreenState();
}

class _listViewScreenState extends State<listViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF6082B6),
      body: Container(
      decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(1)
            ),
            height: MediaQuery.of(context).size.height ,
            width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.all(10),
        child: Container(
          child:
          ListView.builder(
          itemCount: 6,
          itemBuilder: (context, i){
            return Container(
              margin: const EdgeInsets.all(10),
              color: Color(0xFF7393B3),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(1),
                  color: Color(0xFF7393B3),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: const Offset(0, 4), // changes position of shadow
                    ),
                  ],
                ),
              child: ListTile(
                leading: FlutterLogo(),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Introduction to Driving",
                      style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.white,
                    )
                  ],
                ),

                subtitle: Row(
                  children: [
                    Icon(Icons.local_attraction_rounded, color: Colors.yellow,),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        "Intermediate",
                        style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                      ),
                    ),

                  ],
                ),
              ),
            )
            );
          },
          )
        ),
    ),
    );
  }
}
