import 'package:flutter/material.dart';

//here we created a stateful widget
class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController _heightController = TextEditingController();
  TextEditingController _weightController = TextEditingController();
  double _bmiresult = 0;
  String _textResult = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //bmi heading is in top bar
      appBar: AppBar(
        title: Text(
          "BMI Calculator",
          style: TextStyle(
              color: Color.fromARGB(255, 230, 57, 40),
              fontWeight: FontWeight.bold,
              fontSize: 32),
        ),
        backgroundColor: Color.fromARGB(255, 69, 123, 157),
        //means shadow
        elevation: 0,
        centerTitle: true,
      ),
      backgroundColor: Color.fromARGB(255, 29, 53, 87),
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Enter Height",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 230, 57, 40),
                ),
              ),
              Text(
                "Enter Weight",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 230, 57, 40),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 130,
                child: TextField(
                  controller: _heightController,
                  style: TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.w300,
                      color: Color.fromARGB(255, 253, 200, 23)),
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "in m",
                    hintStyle: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w300,
                      color: Colors.white.withOpacity(.8),
                    ),
                  ),
                ),
              ),
              Container(
                width: 130,
                child: TextField(
                  controller: _weightController,
                  style: TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.w300,
                      color: Color.fromARGB(255, 253, 200, 23)),
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "in kgs",
                    hintStyle: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w300,
                      color: Colors.white.withOpacity(.8),
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          //----------------------------
          InkWell(
            onTap: () {
              double _h = double.parse(_heightController.text);
              double _w = double.parse(_weightController.text);
              setState(() {
                _bmiresult = (_w / (_h * _h));
                if (_bmiresult > 25) {
                  _textResult = "You\'re overweight";
                } else if (_bmiresult <= 25 && _bmiresult >= 18.5) {
                  _textResult = "You have normal weight";
                } else {
                  _textResult = "You\'re underweight";
                }
              });
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Color.fromARGB(50, 168, 218, 220),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              padding: EdgeInsets.all(16.0),
              //color: Colors.green,
              child: Text(
                "Calculate",
                style: TextStyle(
                  fontSize: 42,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 253, 200, 23),
                ),
              ),
            ),
          ),

          //----------------------------
          SizedBox(
            height: 50,
          ),

          Container(
            child: Text(
              _bmiresult.toStringAsFixed(2),
              style: TextStyle(
                fontSize: 90,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Visibility(
            visible: _textResult.isNotEmpty,
            child: Container(
              child: Text(
                _textResult,
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
