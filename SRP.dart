// O Princípio da Responsabilidade Única (SRP) afirma que uma classe deve ter apenas uma
// razão para mudar. Em outras palavras, uma classe deve ter apenas uma responsabilidade.
// Uma classe que tem múltiplas responsabilidades é difícil de manter e modificar.

// viola SRP
class UserWrong {
  late int id;
  late String name;

  void save() {}
  void sendEmail() {}
}

// respeita SRP
class UserRight {
  late int id;
  late String name;
}

class UserRepository {
  void save(UserRight user) {}
}

class EmailService {
  void sendEmail(UserRight user) {}
}

void main() {}
