// O Princípio de Segregação de Interface (ISP) afirma que uma classe não deve ser forçada a
// implementar interfaces que ela não usa.
// Em outras palavras, uma classe deve depender somente das interfaces que ela precisa.
import 'dart:math';

// Viola ISP

abstract class Shape {
  double area();
  double perimeter();
}

class Rectangle implements Shape {
  late double width;
  late double height;

  double area() {
    return width * height;
  }

  double perimeter() {
    return 2 * (width + height);
  }
}

class Circle implements Shape {
  late double radius;

  double area() {
    return pi * pow(radius, 2);
  }

  double perimeter() {
    return 2 * pi * radius;
  }
}

// Respeita ISP
abstract class Area {
  double area();
}

abstract class Perimeter {
  double perimeter();
}

class RectangleRight implements Area, Perimeter {
  late double width;
  late double height;

  double area() {
    return width * height;
  }

  double perimeter() {
    return 2 * (width + height);
  }
}

class CircleRigth implements Area {
  late double radius;

  double area() {
    return pi * pow(radius, 2);
  }
}
