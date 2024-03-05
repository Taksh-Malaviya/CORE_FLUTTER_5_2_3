

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title:  Text ("A Shadow Button",
          style: TextStyle(color: Colors.white,
            fontSize: 16,
            // fontStyle:FontWeight.w500,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color (0xff319689),
      ),
      body: Center(
          child: GestureDetector(
            onTap: (){
              print("Button Tap");
            },
            child: Container(
              height: 70,
              alignment: Alignment.center,
              width: 200,
              decoration:  BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                    bottom: Radius.circular(20)

                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(2,3),
                    color: Colors.cyan,
                    spreadRadius: 5,
                    blurRadius: 20,
                  ),
                ],
              ),
              child: Text("TAP",
                style: TextStyle (color: Colors.black,fontSize: 22),),
            ),
          )
      ),
    ),
  ),
  );
}