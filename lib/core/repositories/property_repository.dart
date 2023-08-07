import 'package:core_template/core/data/property_service.dart';
import 'package:core_template/core/models/property/paginated_property.dart';
import 'package:core_template/core/models/property/property.dart';
import 'package:core_template/core/repositories/base_repository.dart';
import 'package:dio/dio.dart';

class PropertyRepository extends BaseRepository {
  PaginatedProperty paginatedData = PaginatedProperty([], null);
  List<PropertyType> types = [];
  setPropertyData(PaginatedProperty newData) {
    this.paginatedData = newData;
    notifyListeners();
  }

  init() async {
    log.i('Start Initilize');
    await this.fetchProperties();
    await this.fetchPropertyTypes();
    log.i('End Initilize');
  }

  Future<void> fetchProperties({int page = 1}) async {
    try {
      Response<Map<String, dynamic>> res =
          await PropertyService.instance.fetchProperties(page: page);
      log.d(res.statusCode);
      if (res.statusCode == 200) {
        setPropertyData(new PaginatedProperty(
            (res.data!['data'] as List<dynamic>)
                .map((e) => Property.fromJson(e as Map<String, dynamic>))
                .toList(),
            Meta.fromJson(res.data!['meta'])));
      }
    } catch (e) {
      log.e(e.toString());
    }
  }

  Future<List<Property>> fetchSimilarProperties(String slug) async {
    try {
      Response<List<dynamic>> res =
          await PropertyService.instance.fetchSimilarProperties(slug);
      log.d(res.statusCode);
      if (res.statusCode == 200) {
        return (res.data!)
            .map((e) => Property.fromJson(e as Map<String, dynamic>))
            .toList();
      }
      return [];
    } catch (e) {
      log.e(e.toString());
      return [];
    }
  }

  Future<Property?> fetchProperty(String slug) async {
    try {
      Response<Map<String, dynamic>> res =
          await PropertyService.instance.fetchProperty(slug);
      log.i(res.data?['user']);
      if (res.statusCode == 200 && res.data != null) {
        return Property.fromJson(res.data!);
      }
      return null;
    } catch (e) {
      log.e(e.toString());
      return null;
    }
  }

  Future<void> fetchPropertyTypes() async {
    try {
      Response<List<dynamic>> res =
          await PropertyService.instance.fetchPropertyTypes();
      log.i(res.data);
      if (res.statusCode == 200 && res.data != null) {
        this.types.addAll(res.data!.map((e) => PropertyType.fromJson(e)));
      }
      return null;
    } catch (e) {
      log.e(e.toString());
      return null;
    }
  }
}
