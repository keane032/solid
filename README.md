#SOLID

Repositorio com explicações e exemplos do acrônimo SOLID.

S — Single Responsiblity Principle (Princípio da responsabilidade única)<br>
O — Open-Closed Principle (Princípio Aberto-Fechado)<br>
L — Liskov Substitution Principle (Princípio da substituição de Liskov)<br>
I — Interface Segregation Principle (Princípio da Segregação da Interface)<br>
D — Dependency Inversion Principle (Princípio da inversão da dependência)<br>



# Princípio da Responsabilidade Única (SRP)

O **Princípio da Responsabilidade Única** (Single Responsibility Principle - SRP) afirma que uma classe deve ter **apenas uma razão para mudar**. Em outras palavras, uma classe deve possuir **apenas uma responsabilidade**.

Quando uma classe acumula múltiplas responsabilidades, ela se torna difícil de manter, testar e modificar, pois alterações em uma responsabilidade podem impactar as outras.

## ❌ Exemplo que viola o SRP

```dart
class User {
  late int id;
  late String name;

  void save() {}
  void sendEmail() {}
}
```

## ✅ Exemplo respeita o SRP

```dart
class User {
  late int id;
  late String name;
}

class UserRepository {
  void save(UserRight user) {}
}

class EmailService {
  void sendEmail(UserRight user) {}
}
 ```

# Princípio Aberto/Fechado (OCP) - SOLID

O **Princípio Aberto/Fechado** (Open/Closed Principle - OCP) afirma que **uma classe deve ser aberta para extensão, mas fechada para modificação**.

Ou seja, devemos ser capazes de **adicionar novos comportamentos** ao sistema sem precisar **alterar o código-fonte existente**, evitando riscos de efeitos colaterais e facilitando a manutenção.

---

## ❌ Exemplo que viola o OCP

```dart
class Rectangle {
  late double width;
  late double height;

  double area() {
    return width * height;
  }
}
```

## ✅ Exemplo respeita o SRP

```dart
import 'dart:math';

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
 ```
