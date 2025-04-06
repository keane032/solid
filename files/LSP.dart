// O Princípio de Substituição de Liskov (LSP) afirma que objetos de uma superclasse devem ser
// capazes de ser substituídos por objetos de uma subclasse sem afetar a correção do programa.
// Em outras palavras, uma subclasse deve ser capaz de substituir sua superclasse sem quebrar o
// código.
import 'dart:math';

// Viola LSP
class Rectangle {
  late double width;
  late double height;

  double area() {
    return width * height;
  }
}

class Square extends Rectangle {
  late double side;

  @override
  void set width(double value) => side = value;

  @override
  void set height(double value) => side = value;
}

// respeita LSP
abstract class Shape {
  double area();
}

class RectangleRight implements Shape {
  late double width;
  late double height;

  double area() {
    return width * height;
  }
}

class SquareRight implements Shape {
  late double side;

  double area() {
    return 1.0 * pow(side, 2);
  }
}
