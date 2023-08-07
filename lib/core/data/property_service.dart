import 'package:core_template/core/data/base_service.dart';

class PropertyService extends BaseService {
  PropertyService._();
  static PropertyService instance = PropertyService._();
  Future<Response<Map<String, dynamic>>> fetchProperties({int page = 1}) {
    return this.api.httpGet<Map<String, dynamic>>('/properties?page=${page}');
  }

  Future<Response<Map<String, dynamic>>> fetchProperty(String slug) {
    return this.api.httpGet<Map<String, dynamic>>('/property/${slug}');
  }

  Future<Response<List<dynamic>>> fetchSimilarProperties(String slug) {
    return this.api.httpGet<List<dynamic>>('/property/similar/${slug}');
  }

  Future<Response<List<dynamic>>> fetchPropertyTypes() {
    return this.api.httpGet<List<dynamic>>('/property-types');
  }
}
