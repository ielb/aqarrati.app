import 'package:core_template/core/data/base_service.dart';
import 'package:core_template/core/data/city_service.dart';
import 'package:core_template/core/models/city/city.dart';
import 'package:core_template/core/repositories/base_repository.dart';

class CityRespository extends BaseRepository {
  List<City> cities = List.empty(growable: true);
  List<City> homeCities = List.empty(growable: true);

  CityRespository() {
    this.init();
  }

  init() async {
    await this.fetchImagedCities();
    await this.fetchCities();
  }

  Future<void> fetchCities() async {
    final Response<List<dynamic>> response =
        await CityService.instance.fetchCities();

    if (response.statusCode == 200 || response.statusCode == 201) {
      cities.addAll(response.data!.map((e) => City.fromJson(e)).toList());
    }
  }

  Future<void> fetchImagedCities() async {
    try {
      final Response<List<dynamic>> response =
          await CityService.instance.fetchImagedCities();

      if (response.statusCode == 200 || response.statusCode == 201) {
        homeCities.addAll(response.data!.map((e) => City.fromJson(e)).toList());
      }
    } catch (e) {
      log.e(e);
    }
  }
}
