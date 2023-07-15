import 'package:flutter/material.dart'; //here we import the necesarry packages
import 'package:first_project/gradient_container.dart';
//entry point of our app
void main() {
  //major function runs the app and makes all the UI components visible
  runApp( MaterialApp(
    //scaffold widget for the other widget other than Material app widget
    home: Scaffold(
      //to add the background color
      backgroundColor: Colors.lightGreenAccent,
      //we add the container to wrap the the center widget and add the gradient into the app

      body: GradientContainer()
    ),
  ));
}
