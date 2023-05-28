import 'package:core_template/core/models/user/user.dart';

class UserResponse {
  User user;
  String token;
  UserResponse(this.user, this.token);

  factory UserResponse.fromJson(Map<String, dynamic> json) {
    final token = json['token'];
    final user = User.fromJson(json['user']);

    return UserResponse(user, token);
  }
}
