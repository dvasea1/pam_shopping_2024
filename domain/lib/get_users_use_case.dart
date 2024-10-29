import 'package:domain/account_repository.dart';
import 'package:domain/user_entity.dart';
import 'package:domain/user_repository.dart';

class GetUsersUseCase {
  final UserRepository userRepository;
  final AccountRepository accountRepository;

  GetUsersUseCase({required this.userRepository,
    required this.accountRepository});

  Future<List<UserEntity>> call() async {
    String accountName = await accountRepository.getAccountName();
    return userRepository.getUsers(accountName);
  }
}
