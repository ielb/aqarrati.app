import 'package:contextual_logging/src/contextual_logger.dart';
import 'package:core_template/core/data/property_service.dart';
import 'package:core_template/core/models/property/paginated_property.dart';
import 'package:core_template/core/models/property/property.dart';
import 'package:core_template/core/repositories/base_repository.dart';
import 'package:dio/dio.dart';

class PropertyRepository extends BaseRepository with ContextualLogger {
  PropertyRepository() {
    this.init();
  }
  PaginatedProperty paginatedData = PaginatedProperty([], null);

  setPropertyData(PaginatedProperty newData) {
    this.paginatedData = newData;
    notifyListeners();
  }

  init() async {
    log.i('Start Initilize');
    await this.fetchProperties();
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
}
