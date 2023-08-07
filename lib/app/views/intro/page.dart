import 'package:core_template/app/components/ui/button.dart';
import 'package:core_template/app/views/auth/login/page.dart';
import 'package:core_template/core/utils/extensions/extensions.dart';
import 'package:flutter/gestures.dart';

class IntroPage extends StatefulWidget {
  static const name = 'introduction_page';

  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  late TapGestureRecognizer _onTapRecognizer;

  @override
  void initState() {
    super.initState();
    _onTapRecognizer = TapGestureRecognizer()..onTap = _handleLoginPress;
  }

  @override
  void dispose() {
    _onTapRecognizer.dispose();
    super.dispose();
  }

  void _handleLoginPress() {
    Navigator.pushNamed(context, LoginPage.name);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Column(
        children: [
          Container(
                  width: screenSize(context).width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://d1d4jznc013bit.cloudfront.net/images/2.webp'))))
              .expandIt(),
          SizedBox(
            width: screenSize(context).width,
            child: Column(
              children: [
                Text.rich(
                  TextSpan(
                      text: 'Discover and Find Your \n',
                      children: [TextSpan(text: 'Perfect Dream House')]),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 22,
                      color: AppColors.black,
                      fontWeight: FontWeight.w500),
                ).paddingOnly(top: 15),
                Text.rich(
                  TextSpan(
                      text: 'App to search and discover the most suitable \n',
                      children: [TextSpan(text: 'Place for you to stay')]),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey.shade500,
                      fontWeight: FontWeight.w400),
                ).paddingOnly(top: 8),
                Spacer(),
                Button(
                  'Register',
                  shadow: true,
                ),
                Text.rich(
                  TextSpan(text: 'Already have an account? ', children: [
                    TextSpan(
                        text: ' Log In',
                        recognizer: _onTapRecognizer,
                        style: TextStyle(
                            fontSize: 14,
                            color: AppColors.primary,
                            fontWeight: FontWeight.w500))
                  ]),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey.shade500,
                      fontWeight: FontWeight.w400),
                ).paddingOnly(top: 25),
                Spacer(),
              ],
            ).paddingAll(20),
          ).expandIt()
        ],
      ),
    );
  }
}
