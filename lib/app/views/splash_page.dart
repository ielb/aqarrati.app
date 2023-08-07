import 'dart:async';

import 'package:core_template/app/views/intro/page.dart';
import 'package:core_template/app/views/navigation/page.dart';
import 'package:core_template/core/repositories/city_repository.dart';
import 'package:core_template/core/repositories/property_repository.dart';
import 'package:core_template/core/repositories/users_repository.dart';
import 'package:core_template/core/utils/extensions/extensions.dart';
import 'package:provider/provider.dart';

class SplashPage extends StatefulWidget {
  static const name = 'Splach_page';
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  late UserRepository _userRepository;
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      debugPrint('test');
      _userRepository = Provider.of<UserRepository>(context, listen: false);
      await _userRepository.init();

      Provider.of<PropertyRepository>(context, listen: false).init();

      Provider.of<CityRespository>(context, listen: false).init();
      // _propertyRepository.init();

      Timer(Duration(seconds: 2), () {
        debugPrint('splash' + _userRepository.isLoggedIn().toString());
        if (_userRepository.isLoggedIn()) {
          Navigator.pushNamed(context, NavigationPage.name);
        } else
          Navigator.pushNamed(context, IntroPage.name);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
