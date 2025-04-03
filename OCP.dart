// O Princípio Aberto/Fechado (OCP) afirma que uma classe deve ser aberta para extensão,
// mas fechada para modificação. Em outras palavras, você deve ser capaz de estender o
// comportamento de uma classe sem modificar seu código-fonte.
import 'dart:math';

// viola OCP
class RectangleWrong {
  late double width;
  late double height;

  double area() {
    return width * height;
  }
}

// respeita OCP
abstract class Shape {
  double area();
}

class Rectangle implements Shape {
  late double width;
  late double height;

  double area() {
    return width * height;
  }
}

class Circle implements Shape {
  late double radius;

  double area() {
    return pi * pow(radius, 2);
  }
}
