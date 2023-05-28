import 'package:core_template/core/data/base_service.dart';

class PropertyService with BaseService {
  PropertyService._();
  static PropertyService instance = PropertyService._();
  Future<Response<Map<String, dynamic>>> fetchProperties({int page = 1}) {
    return this.api.httpGet<Map<String, dynamic>>('/properties?page=${page}');
  }
}
