import 'package:core_template/core/data/base_service.dart';

class UserService extends BaseService {
  UserService._();
  static UserService instance = UserService._();

  Future<Response<Map<String, dynamic>>> login(
      String email, String password) async {
    return await api.httpPost<Map<String, dynamic>>('/auth/login',
        body: {'email': email, 'password': password});
  }

  Future<Response<Map<String, dynamic>>> fetchAuth(String token) {
    return api.httpPost('/auth', headers: {'Authorization': 'Bearer ' + token});
  }
}
