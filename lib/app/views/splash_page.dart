import 'dart:async';

import 'package:core_template/app/views/navigation/page.dart';
import 'package:core_template/core/repositories/property_repository.dart';
import 'package:core_template/core/utils/extensions/extensions.dart';
import 'package:provider/provider.dart';

class SplashPage extends StatefulWidget {
  static const name = 'Splach_page';
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      debugPrint('test');

      Provider.of<PropertyRepository>(context, listen: false);
      // _propertyRepository.init();

      Timer(Duration(seconds: 2), () {
        Navigator.pushNamed(context, NavigationPage.name);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
