import 'package:flutter/material.dart';
import 'package:demoapp/funct/main_drawer.dart';

class Info extends StatelessWidget {
  const Info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: name(),
        ),
        appBar: AppBar(
          title: Text(
            "Info",
            style: TextStyle(
                color: Color.fromARGB(255, 230, 57, 40),
                fontWeight: FontWeight.bold,
                fontSize: 32),
          ),
          backgroundColor: Colors.blueGrey,
          //means shadow
          elevation: 0,
          centerTitle: true,
        ),
        backgroundColor: Color.fromARGB(255, 29, 53, 87),
        body: SingleChildScrollView(
            child: Column(children: [
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "What is BMI Index?",
                style: TextStyle(
                  fontSize: 37,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 230, 57, 40),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                  child: Text(
                '''The body mass index (BMI) is a screening measure that determines if a person is underweight, overweight, or obese, as well as whether they are at a healthy weight for their height. Most adult men and women aged 20 and over have a BMI, which is a measure of body fat based on their weight in relation to their height. It is used to estimate tissue mass. It's a standard metric for determining whether a person's weight is adequate for their height''',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                ),
              ))
            ],
          ),
        ])));
  }
}
