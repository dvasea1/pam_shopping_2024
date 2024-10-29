import 'package:domain/user_entity.dart';
import 'package:domain/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  @override
  Future<List<UserEntity>> getUsers(String accName) async {
    //request la api

    //request la fisier
    return [UserEntity(firstName: 'Vasile', LastName: 'barbaros')];
  }
}
