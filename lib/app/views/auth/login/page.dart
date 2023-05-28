import 'package:core_template/app/components/button.dart';
import 'package:core_template/app/components/input.dart';
import 'package:core_template/app/views/navigation/page.dart';
import 'package:core_template/core/config/contants/icons.dart';
import 'package:core_template/core/repositories/users_repository.dart';
import 'package:core_template/core/utils/extensions/extensions.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  static const name = '/login';

  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool hidePassword = true;
  final TextEditingController _emailController =
      new TextEditingController(text: 'issamelbouhati@gmail.com');
  final TextEditingController _passwordController =
      new TextEditingController(text: '123456789');

  late TapGestureRecognizer _onTapRecognizer;
  late UserRepository _repo;
  // add form key
  final _formKey = new GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _onTapRecognizer = TapGestureRecognizer()..onTap = _handleSignUpPress;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _repo = Provider.of<UserRepository>(context, listen: false);
    });
  }

  @override
  void dispose() {
    _onTapRecognizer.dispose();
    super.dispose();
  }

  void _handleSignUpPress() {
    Navigator.pushNamed(context, LoginPage.name);
  }

  void login() async {
    if (_formKey.currentState!.validate()) {
      print(_emailController.text);
      final data =
          await _repo.login(_emailController.text, _passwordController.text);
      if (data) {
        await Navigator.pushNamed(context, NavigationPage.name);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.background,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hi !, Welcome Back! 👋.',
                style: TextStyle(
                    color: AppColors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                "Hello again you've been missed",
                style: TextStyle(
                    color: Colors.grey.shade500,
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ).paddingOnly(top: 10, bottom: 20),
              Form(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  key: _formKey,
                  child: Column(
                    children: [
                      Input(
                        controller: _emailController,
                        label: 'Email Address',
                        hint: 'Enter your email',
                        validator: FormBuilderValidators.compose([
                          /// Makes this field required
                          FormBuilderValidators.required(),

                          /// Ensures the value is a valid email
                          FormBuilderValidators.email(),
                        ]),
                      ),
                      Input(
                        controller: _passwordController,
                        label: 'Password',
                        hint: 'Enter your password',
                        obscureText: hidePassword,
                        keyboardType: TextInputType.visiblePassword,
                        viewPassword: () {
                          setState(() {
                            hidePassword = !hidePassword;
                          });
                        },
                        validator: FormBuilderValidators.compose([
                          /// Makes this field required
                          FormBuilderValidators.required(),

                          /// Ensures the value is a valid email
                          FormBuilderValidators.minLength(8),
                        ]),
                      ),
                    ],
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Forget Password?',
                    style: TextStyle(color: AppColors.primary),
                  ).click(onTap: () {
                    debugPrint('Forget password');
                  })
                ],
              ).paddingOnly(bottom: 25, top: 5),
              Button('Login', vMarigin: 15, onTap: login),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Divider(
                    endIndent: 10,
                    height: 0,
                    color: Colors.grey.shade400.withOpacity(0.6),
                    thickness: .35,
                  ).expandIt(),
                  Text(
                    'Or login with',
                    style: TextStyle(
                        color: Colors.grey.shade400,
                        fontWeight: FontWeight.w500),
                  ),
                  Divider(
                    indent: 10,
                    height: 0,
                    color: Colors.grey.shade400.withOpacity(0.6),
                    thickness: .35,
                  ).expandIt(),
                ],
              ).paddingOnly(top: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Button(
                    'Google',
                    icon: Logo(
                      Logos.google,
                      size: 25,
                    ),
                    vMarigin: 15,
                    color: Colors.grey.shade500,
                    outlined: true,
                  ).expandIt(),
                  SizedBox(
                    width: 10,
                  ),
                  Button(
                    'Facebook',
                    icon: SvgPicture.asset(
                      ConstIcons.facebook,
                      height: 25,
                    ),
                    vMarigin: 15,
                    color: Colors.grey.shade500,
                    outlined: true,
                  ).expandIt(),
                ],
              ).paddingOnly(top: 15, bottom: 100),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text.rich(
                    TextSpan(text: 'Already have an account? ', children: [
                      TextSpan(
                          text: ' Sign up',
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
                  ).paddingOnly(bottom: 25),
                ],
              )
            ],
          ).paddingAll(25),
        ),
      ),
    );
  }
}
