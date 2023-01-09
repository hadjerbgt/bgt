import 'package:project/app11/Calculate.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class result extends StatelessWidget {
  String val1,
      val2,
      val3,
      val4,
      val5,
      val6,
      val7,
      val8,
      val9,
      val10,
      val11,
      val12;

  result({
    required this.val1,
    required this.val2,
    required this.val3,
    required this.val4,
    required this.val5,
    required this.val6,
    required this.val7,
    required this.val8,
    required this.val9,
    required this.val10,
    required this.val11,
    required this.val12,
  });
  @override
  Widget build(BuildContext context) {
    double result = double.parse(val1) +
        double.parse(val2) +
        double.parse(val3) +
        double.parse(val4) +
        double.parse(val5) +
        double.parse(val6) +
        double.parse(val7) +
        double.parse(val8) +
        double.parse(val9) +
        double.parse(val10) +
        double.parse(val11) +
        double.parse(val12);
    return Scaffold(

      appBar: AppBar(
        title: Text('final teacher’s mark'),
        backgroundColor:
        Colors.blueGrey,


      ),
      body:

      Container(
      decoration: BoxDecoration(
    gradient: LinearGradient(colors: [
    Color.fromARGB(255, 78, 88, 87),
    Color.fromARGB(255, 40, 40, 40)
    ]
    )
    ),
      child: Column(
        children: [
          const SizedBox(
            height: 35,
          ),

      Image.asset("assets/img/calculator.png",
        width: 230,
        height: 202,
        fit: BoxFit.scaleDown,
      ),
          const SizedBox(
            height: 35,
          ),
          Center(
            child:Text(
              "your final mark is :\n$result",
              style: TextStyle(fontSize: 45, fontWeight: FontWeight.w300),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),)
      // body: Container(
      //   child: Center(
      //       child: Center(
      //           child:
      //           Text("YOUR FINAL MARK IS :\n                    $result"))),
      // ),
    );
    ;
  }
}
