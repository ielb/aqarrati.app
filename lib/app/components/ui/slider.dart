import 'package:core_template/core/utils/extensions/extensions.dart';
import 'package:flutter_xlider/flutter_xlider.dart';

// ignore: must_be_immutable
class UiSlider extends StatelessWidget {
  UiSlider({
    required this.minValue,
    required this.maxValue,
    required this.label,
    this.onDragging,
    this.min = 10000,
    this.max = 200000,
    this.hint,
    this.step = 1000,
    this.enabled = true,
    this.hintSize = 13,
    this.pHorizontal = 3,
    this.color = AppColors.white,
    this.validator,
    super.key,
  });
  final String label;
  final String? hint;
  final Color color;
  final bool enabled;
  final double pHorizontal;
  final String? Function(String?)? validator;
  final double hintSize;
  final double step;

  double minValue;
  double maxValue;
  final double min;
  final double max;
  final dynamic Function(int, dynamic, dynamic)? onDragging;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(fontSize: 14),
        ).paddingOnly(left: 2, bottom: 5),
        FlutterSlider(
          values: [minValue, maxValue],
          max: max,
          min: min,
          rangeSlider: true,
          handlerHeight: 25,
          onDragging: onDragging,
          handler: button(Icons.chevron_right),
          rightHandler: button(Icons.chevron_left),
          step: FlutterSliderStep(
            step: step, // default
            isPercentRange:
                false, // ranges are percents, 0% to 20% and so on... . default is true
          ),
          handlerAnimation: FlutterSliderHandlerAnimation(
              curve: Curves.elasticOut,
              reverseCurve: Curves.bounceIn,
              duration: Duration(milliseconds: 500),
              scale: 1),
          tooltip: FlutterSliderTooltip(
            disabled: true,
          ),
        )
      ],
    ).paddingSymmetric(horizontal: pHorizontal, vertical: 0);
  }

  FlutterSliderHandler button(IconData icon) {
    return FlutterSliderHandler(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
      child: Container(
        height: 30,
        width: 30,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: AppColors.gray.withOpacity(.4),
                  offset: Offset(10, 5),
                  blurRadius: 30,
                  spreadRadius: .05)
            ],
            borderRadius: BorderRadius.circular(50)),
        child: Icon(
          icon,
          color: AppColors.black,
          size: 20,
        ),
      ),
    );
  }
}
