// O Princípio da Inversão de Dependência (DIP) afirma que módulos de alto nível não devem depender
// de módulos de baixo nível. Ambos devem depender de abstrações. Em outras palavras,
// você deve depender de abstrações, não de implementações concretas.

class User {}

//Nao respeita
class UserRepository {
  void save(User user) {}
}

class UserService {
  UserRepository userRepository;

  UserService(this.userRepository);

  void saveUser(User user) {
    userRepository.save(user);
  }
}

//respeita DIP
abstract class UserRepositoryAbstract {
  void save(User user);
}

class FirebaseUserRepository implements UserRepositoryAbstract {
  void save(User user) {
    // save user to Firebase
  }
}

class UserServiceRight {
  UserRepositoryAbstract userRepositoryAbstract;

  UserServiceRight(this.userRepositoryAbstract);

  void saveUser(User user) {
    userRepositoryAbstract.save(user);
  }
}
