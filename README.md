#SOLID

Repositorio com explicações e exemplos do acrônimo SOLID.

S — Single Responsiblity Principle (Princípio da responsabilidade única)<br>
O — Open-Closed Principle (Princípio Aberto-Fechado)<br>
L — Liskov Substitution Principle (Princípio da substituição de Liskov)<br>
I — Interface Segregation Principle (Princípio da Segregação da Interface)<br>
D — Dependency Inversion Principle (Princípio da inversão da dependência)<br>



# Princípio da Responsabilidade Única (SRP) - SOLID

O **Princípio da Responsabilidade Única** (Single Responsibility Principle - SRP) afirma que uma classe deve ter **apenas uma razão para mudar**. Em outras palavras, uma classe deve possuir **apenas uma responsabilidade**.

Quando uma classe acumula múltiplas responsabilidades, ela se torna difícil de manter, testar e modificar, pois alterações em uma responsabilidade podem impactar as outras.

## ❌ Exemplo que viola o SRP

```dart
class User {
  late int id;
  late String name;

  void save() {}
  void sendEmail() {}
} ```

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
} ```

