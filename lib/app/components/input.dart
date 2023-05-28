import 'package:core_template/core/utils/extensions/extensions.dart';
import 'package:icons_plus/icons_plus.dart';

class Input extends StatelessWidget {
  Input(
      {required this.controller,
      super.key,
      this.label,
      this.hint,
      this.keyboardType = TextInputType.text,
      this.enabled = true,
      this.obscureText = false,
      this.pHorizontal = 0,
      this.hintSize = 13,
      this.color = AppColors.white,
      this.viewPassword,
      this.validator,
      this.icon,
      this.sufficIcon});
  final String? label;
  final String? hint;
  final Widget? icon;
  final Color color;
  final Widget? sufficIcon;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final bool enabled;
  final void Function()? viewPassword;
  final bool obscureText;
  final double pHorizontal;
  final String? Function(String?)? validator;
  final double hintSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null)
          Text(
            label!,
            style: const TextStyle(fontSize: 14),
          ).paddingOnly(left: 2, bottom: 5),
        TextFormField(
          cursorColor: AppColors.primary,
          controller: controller,
          cursorWidth: 1,
          keyboardType: keyboardType,
          obscureText: obscureText,
          validator: validator,
          style: const TextStyle(fontSize: 14),
          decoration: InputDecoration(
              hintText: hint,
              hintStyle: TextStyle(fontSize: hintSize),
              helperStyle: const TextStyle(fontSize: 13),
              enabled: true,
              filled: true,
              errorStyle: TextStyle(fontSize: 11, color: AppColors.danger),
              isDense: false,
              isCollapsed: false,
              prefixIcon: icon,
              suffixIcon: sufficIcon != null
                  ? sufficIcon
                  : keyboardType == TextInputType.visiblePassword
                      ? Icon(
                          obscureText ? Iconsax.eye_slash : Iconsax.eye,
                          size: 20,
                          color: Colors.grey.shade400,
                        ).click(onTap: viewPassword)
                      : null,
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.grey.shade200),
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                  gapPadding: 2),
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(width: 1.3, color: AppColors.primary),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  gapPadding: 2),
              errorBorder: const OutlineInputBorder(
                  borderSide: BorderSide(width: 1.3, color: AppColors.danger),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  gapPadding: 2),
              focusedErrorBorder: const OutlineInputBorder(
                  borderSide: BorderSide(width: 1.3, color: AppColors.danger),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  gapPadding: 2),
              focusColor: Colors.black,
              fillColor: color,
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              constraints: const BoxConstraints(minHeight: 40),
              border: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.grey.shade200),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  gapPadding: 2)),
        ),
      ],
    ).paddingSymmetric(horizontal: pHorizontal, vertical: 10);
  }
}
