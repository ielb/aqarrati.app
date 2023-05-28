import 'package:core_template/core/utils/extensions/extensions.dart';

class Button extends StatelessWidget {
  Button(
    this.text, {
    super.key,
    this.color = AppColors.primary,
    this.vMarigin = 10,
    this.hMarigin = 0,
    this.type,
    this.shadow = false,
    this.outlined = false,
    this.icon,
    this.onTap,
  });

  final String text;
  final String? type;
  final Function()? onTap;
  final Color color;
  final double vMarigin;
  final double hMarigin;
  final bool shadow;
  final bool outlined;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      margin: EdgeInsets.symmetric(vertical: vMarigin, horizontal: hMarigin),
      constraints: BoxConstraints(maxHeight: 50),
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (icon != null) icon!,
          Text(
            text,
            style: TextStyle(
                fontSize: 16,
                color: outlined ? color : Colors.white,
                fontWeight: icon != null ? FontWeight.w400 : FontWeight.w500),
          ).paddingOnly(left: icon != null ? 10 : 0),
        ],
      ),
      decoration: BoxDecoration(
          color: outlined ? AppColors.white : color,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          border: Border.all(color: color.withOpacity(.4), width: 1.2),
          boxShadow: [
            if (shadow)
              BoxShadow(
                  color: color.withOpacity(.2),
                  spreadRadius: 1,
                  blurRadius: 15,
                  offset: const Offset(0, 10))
          ]),
    ).click(onTap: onTap);
  }
}
