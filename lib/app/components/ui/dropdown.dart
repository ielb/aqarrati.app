import 'package:core_template/core/utils/extensions/extensions.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

// ignore: must_be_immutable
class UiDropDown<T> extends StatelessWidget {
  UiDropDown({
    required this.controller,
    required this.items,
    this.selectedValue,
    this.label,
    this.hint,
    this.enabled = true,
    this.pHorizontal = 0,
    this.hintSize = 13,
    this.color = AppColors.white,
    this.validator,
    super.key,
  });
  final String? label;
  final String? hint;
  final Color color;
  final TextEditingController controller;
  final bool enabled;
  final double pHorizontal;
  final String? Function(T?)? validator;
  final double hintSize;
  final List<T> items;
  T? selectedValue;

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(builder: (context, setState) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (label != null)
            Text(
              label!,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ).paddingOnly(left: 2, bottom: 5),
          DropdownButtonHideUnderline(
            child: DropdownButtonFormField2<T>(
              isExpanded: true,
              hint: Text(
                'Select ${label}',
                style: TextStyle(
                  fontSize: 14,
                  color: Theme.of(context).hintColor,
                ),
              ),
              validator: validator,
              decoration: InputDecoration(
                  hintStyle: TextStyle(fontSize: hintSize),
                  helperStyle: const TextStyle(fontSize: 13),
                  enabled: true,
                  filled: true,
                  errorStyle: TextStyle(fontSize: 11, color: AppColors.danger),
                  isDense: false,
                  isCollapsed: false,
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(width: 1, color: Colors.grey.shade200),
                    borderRadius: const BorderRadius.all(Radius.circular(8)),
                  ),
                  focusedBorder: const OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 1.3, color: AppColors.primary),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      gapPadding: 2),
                  errorBorder: const OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 1.3, color: AppColors.danger),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      gapPadding: 2),
                  focusedErrorBorder: const OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 1.3, color: AppColors.danger),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      gapPadding: 2),
                  focusColor: Colors.black,
                  fillColor: color,
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  constraints: const BoxConstraints(minHeight: 30),
                  border: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 1, color: Colors.grey.shade200),
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      gapPadding: 2)),

              items: items
                  .map((item) => DropdownMenuItem(
                        value: item,
                        child: Text(
                          item.toString(),
                          style: const TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ))
                  .toList(),
              value: selectedValue,
              onChanged: (value) {
                setState(() {
                  selectedValue = value;
                });
              },
              buttonStyleData: const ButtonStyleData(
                height: 38,
                width: 200,
              ),
              dropdownStyleData:
                  DropdownStyleData(maxHeight: 300, offset: Offset(0, -5)),
              menuItemStyleData: const MenuItemStyleData(
                height: 40,
              ),
              dropdownSearchData: DropdownSearchData(
                searchController: controller,
                searchInnerWidgetHeight: 50,
                searchInnerWidget: Container(
                  height: 50,
                  padding: const EdgeInsets.only(
                    top: 8,
                    bottom: 4,
                    right: 8,
                    left: 8,
                  ),
                  child: TextFormField(
                    expands: true,
                    maxLines: null,
                    controller: controller,
                    decoration: InputDecoration(
                        hintText: hint,
                        hintStyle: TextStyle(fontSize: hintSize),
                        helperStyle: const TextStyle(fontSize: 13),
                        enabled: true,
                        filled: true,
                        errorStyle:
                            TextStyle(fontSize: 11, color: AppColors.danger),
                        isDense: false,
                        isCollapsed: false,
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1, color: Colors.grey.shade200),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8)),
                            gapPadding: 2),
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1.3, color: AppColors.primary),
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            gapPadding: 2),
                        errorBorder: const OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1.3, color: AppColors.danger),
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            gapPadding: 2),
                        focusedErrorBorder: const OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1.3, color: AppColors.danger),
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            gapPadding: 2),
                        focusColor: Colors.black,
                        fillColor: color,
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 3),
                        constraints: const BoxConstraints(minHeight: 40),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1, color: Colors.grey.shade200),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                            gapPadding: 2)),
                  ),
                ),
                searchMatchFn: (item, searchValue) {
                  return (item.value.toString().contains(searchValue));
                },
              ),
              //This to clear the search value when you close the menu
              onMenuStateChange: (isOpen) {},
            ),
          ),
        ],
      ).paddingSymmetric(horizontal: pHorizontal, vertical: 10);
    });
  }
}
