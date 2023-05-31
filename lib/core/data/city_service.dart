import 'package:core_template/core/data/base_service.dart';

class CityService extends BaseService {
  CityService._();
  static CityService instance = CityService._();
  Future<Response<List<dynamic>>> fetchCities() {
    return this.api.httpGet<List<dynamic>>('/cities');
  }

  Future<Response<List<dynamic>>> fetchImagedCities() {
    return this.api.httpGet<List<dynamic>>('/cities/imaged');
  }
}
