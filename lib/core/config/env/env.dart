import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: '.env')
abstract class Env {
  @EnviedField(varName: 'API_BASE_URL', defaultValue: 'https://api.restate.ma')
  static const String apiBaseUrl = _Env.apiBaseUrl;
}
