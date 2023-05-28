import 'package:core_template/core/utils/extensions/extensions.dart';

class AppColors {
  static final AppColors _const = AppColors._internal();

  factory AppColors() {
    return _const;
  }

  AppColors._internal();

  static const Color primary = Color(0xff00b4d8);
  static const Color secondary = Color(0xff1e1d85);
  static const Color text = Color(0xff333333);
  static const Color success = Color(0xff00d68f);
  static const Color info = Color(0xff00a8ff);
  static const Color warning = Color(0xffffaa00);
  static const Color danger = Color(0xffff3d71);
  static const Color dark = Color(0xff1e1e2f);
  static const Color light = Color(0xfff4f5f7);
  static const Color white = Color(0xffffffff);
  static const Color black = Color(0xff000000);
  static const Color transparent = Color(0x000000ff);
  static const Color orange = Color(0xffFf6935);
  static const Color background = Color.fromARGB(255, 255, 255, 255);
  static const Color whatsapp = Color(0xff25d366);
  static const Color facebook = Color(0xff4267B2);
  static const Color twitter = Color(0xff1DA1F2);
  static const Color linkedin = Color(0xff0072b1);
  static const Color gray = Color(0xff64748b);
}
