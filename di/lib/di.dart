import 'package:data/account_repository_impl.dart';
import 'package:data/user_repository_impl.dart';
import 'package:domain/account_repository.dart';
import 'package:domain/get_users_use_case.dart';
import 'package:domain/user_repository.dart';

class Di {
  final UserRepository _userRepository = UserRepositoryImpl();
  final AccountRepository _accountRepository = AccountRepositoryImpl();

  late GetUsersUseCase getUsersUseCase;

  void init() {
    getUsersUseCase = GetUsersUseCase(userRepository: _userRepository,
        accountRepository: _accountRepository);
  }
}
