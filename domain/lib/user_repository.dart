import 'package:domain/user_entity.dart';

abstract class UserRepository {
  Future<List<UserEntity>> getUsers(String accName);
}
