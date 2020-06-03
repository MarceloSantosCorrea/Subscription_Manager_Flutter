import 'package:flutter/material.dart';

import 'Home.dart';

class MySplash extends StatefulWidget {
  @override
  _MySplashState createState() => _MySplashState();
}

class _MySplashState extends State<MySplash> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 2),(){
      Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => Home()
        ));
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;


    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Container(
        height: height,
        width: height,
        child: Center(
          child: Text("SUNO", style: TextStyle(
              fontFamily: "Stentiga",
              fontSize: width * 0.25,
              color: Colors.grey
            ),),
          /*Container(
            
            height: 200,
            width: 200,
           // padding: EdgeInsets.all(30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(width * 0.5),
              color: Colors.deepPurple[700]
            ),
            child: Center(
              child: Text("SUNO", style: TextStyle(
              fontFamily: "Stentiga",
              fontSize: width * 0.1,
              
            ),),
            )
          ),*/
        ),
      ),
    );
  }
}