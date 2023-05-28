import 'package:core_template/core/data/user_service.dart';
import 'package:core_template/core/models/user/user.dart';
import 'package:core_template/core/repositories/base_repository.dart';
import 'package:core_template/core/utils/extensions/extensions.dart';

class UserRepository extends BaseRepository {
  User? _user;
  String? token;
  setUser(User data) {
    _user = data;
    notifyListeners();
  }

  setToken(String data) {
    token = data;
    notifyListeners();
  }

  isLoggedIn() {
    if (token != null) {
      return true;
    }
    return false;
  }

  Future<bool> login(String email, String password) async {
    if (_user != null) {
      return true;
    }
    setLoading(true);
    print('here' + email);
    try {
      final userData = await UserService.instance.login(email, password);
      print(userData);
      if (userData.data != null) {
        setError(true, 'User not found');
      }
      if (userData.data != null) {
        setUser(User.fromJson(userData.data!['user']));
        setToken(userData.data!['token']);
      }

      setLoading(false);
      return true;
    } catch (e) {
      debugPrint(e.toString());
      setError(true, e.toString());
      return false;
    }
  }
}
