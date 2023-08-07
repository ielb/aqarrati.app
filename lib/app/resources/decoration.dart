import 'package:core_template/core/utils/extensions/extensions.dart';

class UiDecoration {
  UiDecoration._();

  static BoxDecoration glassMorphismDecoration(double raduis) {
    return BoxDecoration(
      gradient: LinearGradient(
        colors: [
          Colors.white.withOpacity(0.8),
          Colors.white.withOpacity(0.3),
        ],
        begin: AlignmentDirectional.topStart,
        end: AlignmentDirectional.bottomEnd,
      ),
      borderRadius: BorderRadius.circular(raduis),
    );
  }
}
