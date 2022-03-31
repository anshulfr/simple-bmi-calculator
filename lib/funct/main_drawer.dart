import 'package:demoapp/screend/home.dart';
import 'package:demoapp/screend/info.dart';
import 'package:flutter/material.dart';

class name extends StatelessWidget {
  const name({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        child: Padding(
          padding: EdgeInsets.only(top: 50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 5.0,
              ),
            ],
          ),
        ),
      ),
      SizedBox(
        height: 20.0,
      ),
      //Now let's Add the button for the Menu
      //and let's copy that and modify it
      ListTile(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => HomeScreen()));
        },
        title: Text("Calculator"),
      ),
      ListTile(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Info()));
        },
        title: Text("Information"),
      ),
    ]);
  }
}
