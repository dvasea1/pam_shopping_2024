import 'package:json_annotation/json_annotation.dart';
import 'package:shopping/models/user.dart';

part 'user_response.g.dart';

@JsonSerializable()
class UserResponse {
  @JsonKey(name: 'users')
  final List<User> userList;

  UserResponse({required this.userList});

  factory UserResponse.fromJson(Map<String, dynamic> jsonMap) => _$UserResponseFromJson(jsonMap);

  Map<String, dynamic> toJson() => _$UserResponseToJson(this);
}
