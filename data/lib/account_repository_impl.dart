import 'package:domain/account_repository.dart';

class AccountRepositoryImpl implements AccountRepository {
  @override
  Future<String> getAccountName() async {
    return 'PAM';
  }
}
