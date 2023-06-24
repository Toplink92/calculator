// ignore_for_file: avoid_unnecessary_containers, non_constant_identifier_names, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
//import 'package:math_expressions/math_expressions.dart';

//import 'package:math_expressions/math_expressions.dart';

//import 'anoda.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

//void setState(Function() param0) {}

//dynamic mycolor = 0xFFFFEB3B;

class _HomeScreenState extends State<HomeScreen> {
  String equation = '';

  String result = '';
  String text = '';
  int? fine1;
  int? fine2;

  String res = '';

  mycal(String buttonText) {
    print(buttonText);

    if (buttonText == 'C') {
      fine1 = 0;
      fine2 = 0;
      result = buttonText.substring(0, 0);
      res = buttonText.substring(0, 0);
      //res = equation.substring(0, 0);
    } else if (buttonText == 'Del') {
      //result = res.toString();

      result = buttonText.substring(0, 0);
      res = buttonText.substring(0, 0);
    } else if (buttonText == '+' ||
        buttonText == '-' ||
        buttonText == '/' ||
        buttonText == 'x') {
      fine1 = int.parse(equation);
      res = '';
      result = "";
      text = buttonText;
    } else if (buttonText == "=") {
      fine2 = int.parse(equation);

      if (text == "-") {
        res = fine1.toString() + text.toString() + fine2.toString();
        result = (fine1! - fine2!).toString();
      }
      if (text == ".") {
        result = (fine1! + fine2!).toString();
        res = fine1.toString() + text.toString() + fine2.toString();
      }

      if (text == "/") {
        result = (fine1! / fine2!).toString();
        res = fine1.toString() + text.toString() + fine2.toString();
      }
      if (text == "x") {
        result = (fine1! * fine2!).toString();
        res = fine1.toString() + text.toString() + fine2.toString();
      }
      if (text == "+") {
        result = (fine1! + fine2!).toString();
        res = fine1.toString() + text.toString() + fine2.toString();
      }
    } else {
      result = (equation + buttonText).toString();
    }

    setState(() {
      equation = result;
    });
  }

  myCalcu(String button, num buttonheight, dynamic yellow) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(5),
        height: buttonheight * 64,
        decoration: BoxDecoration(
          color: yellow,
          borderRadius: BorderRadius.circular(10),
        ),
        child: MaterialButton(
          onPressed: () {
            mycal(button);
          },
          child: Text(
            button,
            style: const TextStyle(fontSize: 18, color: Colors.black),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Welcome Chief',
          style: TextStyle(fontSize: 16, color: Colors.purple),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Column(children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      decoration:
                          const BoxDecoration(color: Colors.transparent),
                      height: MediaQuery.of(context).size.height * 0.15,
                      child: Text(
                        res,
                        style: const TextStyle(
                            fontSize: 24, color: Colors.white60),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      decoration:
                          const BoxDecoration(color: Colors.transparent),
                      height: MediaQuery.of(context).size.height * 0.15,
                      child: Text(
                        result,
                        style:
                            const TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              thickness: 2,
            ),
            Expanded(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: const BoxDecoration(),
                      width: MediaQuery.of(context).size.width * 0.70,
                      child: Table(
                        children: [
                          TableRow(children: [
                            myCalcu('Del', 1, Colors.deepPurpleAccent),
                            myCalcu('C', 1, Colors.deepPurpleAccent),
                            myCalcu('/', 1, Colors.deepOrange),
                          ]),
                          TableRow(children: [
                            myCalcu('9', 1, Colors.yellow),
                            myCalcu('8', 1, Colors.yellow),
                            myCalcu('7', 1, Colors.yellow),
                          ]),
                          TableRow(children: [
                            myCalcu('6', 1, Colors.yellow),
                            myCalcu('5', 1, Colors.yellow),
                            myCalcu('4', 1, Colors.yellow),
                          ]),
                          TableRow(children: [
                            myCalcu('3', 1, Colors.yellow),
                            myCalcu('2', 1, Colors.yellow),
                            myCalcu('1', 1, Colors.yellow),
                          ]),
                          TableRow(children: [
                            myCalcu('000', 1, Colors.yellow),
                            myCalcu('0', 1, Colors.yellow),
                            myCalcu('00', 1, Colors.yellow),
                          ]),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  decoration: const BoxDecoration(),
                                  width:
                                      MediaQuery.of(context).size.width * 0.25,
                                  child: Table(children: [
                                    TableRow(children: [
                                      myCalcu('x', 1, Colors.deepOrange),
                                    ])
                                  ]))
                            ]),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  decoration: const BoxDecoration(),
                                  width:
                                      MediaQuery.of(context).size.width * 0.25,
                                  child: Table(children: [
                                    TableRow(children: [
                                      myCalcu('-', 1, Colors.deepOrange),
                                    ])
                                  ]))
                            ]),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  decoration: const BoxDecoration(),
                                  width:
                                      MediaQuery.of(context).size.width * 0.25,
                                  child: Table(children: [
                                    TableRow(children: [
                                      myCalcu('+', 1, Colors.deepOrange),
                                    ])
                                  ]))
                            ]),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  decoration: const BoxDecoration(),
                                  width:
                                      MediaQuery.of(context).size.width * 0.25,
                                  child: Table(children: [
                                    TableRow(children: [
                                      myCalcu('=', 2.1, Colors.blueGrey),
                                    ])
                                  ]))
                            ]),
                      ],
                    )
                  ]),
            ),
          ]),
        ),
      ),
    );
  }
}
