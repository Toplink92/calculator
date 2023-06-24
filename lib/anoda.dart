/*import 'package:math_expressions/math_expressions.dart';

import 'home.dart';

mycal(String buttonText) {
  if (buttonText == 'c') {
    equation = '0';
    result = '0';
  }
  if (equation == '0') {
    result = '0';
  }
  if (buttonText == 'del') {
    equation = equation.substring(0, equation.length - 1);
  }

  if (buttonText == '=') {
    expression = equation;
    expression = expression.replaceAll('x', '*');
    //expression = expression.replaceAll(from, replace)
  } else {
    if (equation == '0') {
      equation = '0';
    }
    equation = equation + buttonText;
  }
  try {
    Parser p = Parser();
    Expression exp = p.parse(expression);
    ContextModel cm = ContextModel();

    result = exp.evaluate(EvaluationType.REAL, cm);
  } catch (e) {
    result = 'error';
  }
}*/

/*
      if (buttonText == 'C') {
        equation = '0';
        equation = result;
      } else if (buttonText == '*') {
        equation = buttonText * buttonText;
        equation = equation.toString();
      } else if (buttonText == '/') {
        equation = buttonText / buttonText;
        equation = result;
      } else if (buttonText == '+') {
        equation = buttonText + buttonText;
        equation = result;
      } else if (buttonText == '-') {
        equation = buttonText - buttonText;
        equation = result;
      } else if (buttonText == 'Del') {
        equation = equation.toString().substring(0, equation.length - 1);
        equation = result;
      } else if (equation == '0') {
        equation = equation.toString().substring(0, equation.length - 1);
        equation = result;
      } else if (buttonText == '=') {
        equation = result;
      }*/



      /*setState(() {
      if (buttonText == 'C') {
        result = "";
        text = "";
        first = 0;
        second = 0;
      } else if (buttonText == '+' ||
          buttonText == '-' ||
          buttonText == '/' ||
          buttonText == '*') {
        first = int.parse(equation);
        result = "";
        equation = "";
      } else if (buttonText == '=') {
        second = int.parse(buttonText);
        equation = buttonText;
        if (equation == '+') {
          result = (first! + second!).toString();
        }
        if (equation == '-') {
          result = (first! - second!).toString();
        }
        if (equation == 'x') {
          result = (first! * second!).toString();
        }
        if (equation == '/') {
          result = (first! ~/ second!).toString();
        }
      } else {
        result = int.parse(equation + buttonText).toString();
      }
      text = equation; */
