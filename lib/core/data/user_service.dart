import 'package:core_template/core/data/base_service.dart';

class UserService with BaseService {
  UserService._();
  static UserService instance = UserService._();

  Future<Response<Map<String, dynamic>>> login(
      String email, String password) async {
    return await api.httpPost<Map<String, dynamic>>(
        '/auth/login', {'email': email, 'password': password});
  }
}
