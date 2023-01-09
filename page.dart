import 'package:flutter/material.dart';

import 'package:project/app2/form.dart';
import 'package:project/app11/Calculate.dart';


class DashBoardV extends StatefulWidget {
  const DashBoardV({super.key});

  @override
  State<DashBoardV> createState() => _DashBoardVState();
}

class _DashBoardVState extends State<DashBoardV> {







  late String codeDialog;

  Future<void> _displayTextInputDialog(BuildContext context) async {
    String valueText="";
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Please enter your Full Name',style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
            content: TextField(
              onChanged: (value) {
                setState(() {
                  valueText = value;
                });
              },
              decoration: InputDecoration(hintText: "Name like the one in the created vivas"),
            ),
            actions: <Widget>[
              OutlinedButton(
                child: Text('CANCEL',style: TextStyle(color: Colors.white)),
                style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.red
                ),
                onPressed: () {
                  setState(() {
                    Navigator.pop(context);
                  });
                },
              ),
              OutlinedButton(
                child: Text('OK',style: TextStyle(color: Colors.white)),
                onPressed: () {
                  setState(() {
                    // codeDialog = valueText;
                    // Navigator.push(context, MaterialPageRoute(builder: (context){return ViewMyVivas(teacher: codeDialog);}),);
                  });
                },
                style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.green
                ),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
          centerTitle: true,
          backgroundColor:
          Colors.blueGrey,
        ),
        body: SafeArea(child: Center(
          child: Container(

              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Color.fromARGB(255, 78, 88, 87),
                    Color.fromARGB(255, 40, 40, 40)
                  ]
                  )
              ),
              child: Column(
                children: [

                  Image.asset("assets/img/welcomeback.png",
                    width: 230,
                    height: 202,
                    fit: BoxFit.scaleDown,
                  ),
                  const SizedBox(height: 40.0,),
                  const Text("Welcome To The Viva App",style: TextStyle(fontSize: 20,color: Color(0xff020202), fontWeight: FontWeight.w600),),
                  const SizedBox(height: 8.0,),
                  SizedBox(
                      width: 200,
                      child:
                      Text("Click on What you want to do Take Control",style: TextStyle(fontSize:14,color: Color(0xff8D92A3), fontWeight: FontWeight.w400), textAlign: TextAlign.center,
                      )
                  ),
                  const SizedBox(height: 50,),
                  FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // OutlinedButton(onPressed:() {
                        //   Navigator.push(context, MaterialPageRoute(builder: (context){return Calculate();}),);
                        // },
                        //   style:
                        //   OutlinedButton.styleFrom(minimumSize: const Size(200,50)),
                        //   child:
                        //   Text(
                        //     "Calculate Note".toUpperCase(),
                        //     style: const TextStyle(fontWeight: FontWeight.bold),
                        //   ),
                        // ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context){return Calculate();}),);
                          },
                          child: Container(
                            width: 150,
                            height: 60,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.blueGrey,
                                  Color.fromRGBO(76, 174, 227, 1),
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  offset: Offset(5, 5),
                                  blurRadius: 10,
                                )
                              ],
                            ),
                            child: Center(
                              child: Text(
                                "Calculate Note",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 8.0),
                        // OutlinedButton(onPressed:() {
                        //   Navigator.push(context, MaterialPageRoute(builder: (context){return Myform();}),);
                        // },
                        //   style:
                        //   OutlinedButton.styleFrom(minimumSize: const Size(200,50)),
                        //   child:
                        //   Text(
                        //     "Submit Viva".toUpperCase(),
                        //     style: const TextStyle(fontWeight: FontWeight.bold),
                        //
                        //   ),
                        // ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context){return Myform();}),);
                          },
                          child: Container(
                            width: 150,
                            height: 60,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.blueGrey,
                                  Color.fromRGBO(76, 174, 227, 1),
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  offset: Offset(5, 5),
                                  blurRadius: 10,
                                )
                              ],
                            ),
                            child: Center(
                              child: Text(
                                "Submit Viva",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 8.0),
                        // OutlinedButton(onPressed:() {
                        //
                        //   _displayTextInputDialog(context);
                        // },
                        //   style:
                        //   OutlinedButton.styleFrom(minimumSize: const Size(200,50),
                        //       backgroundColor: Colors.grey.shade500),
                        //   child:
                        //   Text(
                        //     "My Viva".toUpperCase(),
                        //     style: const TextStyle(fontWeight: FontWeight.bold,
                        //         color: Colors.white),
                        //   ),
                        // ),
                        GestureDetector(
                          onTap: () {
                            _displayTextInputDialog(context);
                          },
                          child: Container(
                            width: 150,
                            height: 60,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.blueGrey,
                                  Color.fromRGBO(76, 174, 227, 1),
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  offset: Offset(5, 5),
                                  blurRadius: 10,
                                )
                              ],
                            ),
                            child: Center(
                              child: Text(
                                'My Viva',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )


                ],
              ),
            ),
          ),
        )
    );
  }
}