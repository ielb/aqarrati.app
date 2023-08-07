import 'dart:io';

import 'package:core_template/core/data/base_service.dart';
import 'package:core_template/core/data/user_service.dart';
import 'package:core_template/core/models/user/user.dart';
import 'package:core_template/core/repositories/base_repository.dart';
import 'package:core_template/core/utils/extensions/extensions.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

class UserRepository extends BaseRepository {
  User? _user;
  String? token;

  init() async {
    Directory? dir = Platform.isAndroid
        ? await getExternalStorageDirectory() //FOR ANDROID
        : await getApplicationSupportDirectory();
    if (dir == null) {
      return;
    }

    Hive.init(dir.path);
    Box<String> _tokenBox = await Hive.openBox<String>('token');
    String? savedToken = _tokenBox.get('token');
    if (savedToken != null) {
      setToken(savedToken);
    }

    await this.checkAuth();
  }

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
        this.saveToken();
      }

      setLoading(false);
      return true;
    } catch (e) {
      debugPrint(e.toString());
      setError(true, e.toString());
      return false;
    }
  }

  Future<bool> checkAuth() async {
    if (this.token == null) {
      return false;
    }
    setLoading(true);
    print(this.token!);
    try {
      Response<Map<String, dynamic>> userData =
          await UserService.instance.fetchAuth(token!);
      log.d(userData);

      if (userData.statusCode != 200 || userData.statusCode != 200) {
        setError(true, 'User not found');
      }
      if (userData.data != null) {
        setUser(User.fromJson(userData.data!));
      }

      setLoading(false);
      return true;
    } catch (e) {
      debugPrint(e.toString());
      setError(true, e.toString());
      this.token = null;
      return false;
    }
  }

  saveToken() {
    if (this.token != null) {
      Hive.box<String>('token').put('token', this.token!);
    }
  }
}
