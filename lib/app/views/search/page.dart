import 'package:core_template/app/components/property.dart';
import 'package:core_template/app/components/ui/button.dart';
import 'package:core_template/app/components/ui/dropdown.dart';
import 'package:core_template/app/components/ui/input.dart';
import 'package:core_template/app/components/ui/slider.dart';
import 'package:core_template/app/resources/icons.dart';
import 'package:core_template/app/views/auth/login/page.dart';
import 'package:core_template/core/repositories/city_repository.dart';
import 'package:core_template/core/repositories/property_repository.dart';
import 'package:core_template/core/utils/extensions/extensions.dart';
import 'package:core_template/core/utils/formats/price_format.dart';
import 'package:flutter/gestures.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:provider/provider.dart';

class SearchPage extends StatefulWidget {
  static const name = 'search_page';

  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  bool sheetOpend = false;
  late TapGestureRecognizer _onTapRecognizer;
  final List<String> archivedIds = [];

  double minPrice = 50000;
  double maxPrice = 100000000;
  double minArea = 50;
  double maxArea = 10000;
  TextEditingController _cityController = TextEditingController();
  TextEditingController _bathController = TextEditingController();
  TextEditingController _bedController = TextEditingController();
  List<int> numbersList = List.generate(10, (index) => index + 1);
  final scaffoldState = GlobalKey<ScaffoldState>();
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

  bool isArchived(String id) {
    print(archivedIds.contains(id));
    if (archivedIds.contains(id)) {
      return true;
    }
    return false;
  }

  final List<int> typesIds = [];

  filter() {
    // if (sheetOpend) {
    //   setState(() {
    //     sheetOpend = false;
    //   });
    //   Navigator.pop(context);
    //   return;
    // }
    // setState(() {
    //   sheetOpend = true;
    // });
    scaffoldState.currentState!.showBottomSheet(
      (context) {
        return StatefulBuilder(builder: (context, setState) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(IonIcons.close).click(onTap: () {
                        Navigator.pop(context);
                      }),
                      Text(
                        'Filter',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: AppColors.black),
                      ),
                      Text(
                        'Reset',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: AppColors.danger),
                      ).click(onTap: () {
                        //RESET
                      })
                    ],
                  ),
                  Text(
                    'Type',
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w500),
                  )
                      .paddingOnly(left: 2, bottom: 5, top: 20)
                      .align(alignment: Alignment.centerLeft),
                  SizedBox(
                    height: 30,
                    child: Consumer<PropertyRepository>(
                        builder: (context, repo, child) {
                      return ListView.builder(
                          itemCount: repo.types.length,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          physics: BouncingScrollPhysics(),
                          itemBuilder: (context, index) {
                            return Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 10),
                              margin: EdgeInsets.only(right: 5),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color:
                                      typesIds.indexOf(repo.types[index].id) ==
                                              -1
                                          ? Colors.grey.shade300
                                          : AppColors.success,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Text(
                                repo.types[index].name_en,
                                style: TextStyle(
                                    color: typesIds.indexOf(
                                                repo.types[index].id) ==
                                            -1
                                        ? AppColors.black
                                        : AppColors.white),
                              ),
                            ).click(onTap: () {
                              int i = typesIds.indexOf(repo.types[index].id);
                              setState(() {
                                if (i == -1) {
                                  typesIds.add(repo.types[index].id);
                                } else {
                                  typesIds.removeAt(i);
                                }
                              });
                            });
                          });
                    }),
                  ),
                  Consumer<CityRespository>(builder: (context, repo, child) {
                    return UiDropDown(
                      controller: _cityController,
                      items: repo.cities,
                      label: 'City',
                      hint: 'city',
                    );
                  }),
                  UiSlider(
                    label:
                        'Price : from ${formatCurrency.format(minPrice)} To ${formatCurrency.format(maxPrice)} ',
                    min: 50000,
                    max: 100000000,
                    minValue: minPrice,
                    maxValue: maxPrice,
                    onDragging: (handlerIndex, lowerValue, upperValue) {
                      setState(() {
                        minPrice = lowerValue;
                        maxPrice = upperValue;
                      });
                    },
                  ),
                  UiSlider(
                    label:
                        'Land : from ${minArea.ceil()} m² To ${maxArea.ceil()} m²',
                    min: 50,
                    max: 10000,
                    step: 1,
                    minValue: minArea,
                    maxValue: maxArea,
                    onDragging: (handlerIndex, lowerValue, upperValue) {
                      minArea = lowerValue;
                      maxArea = upperValue;
                      print(lowerValue);
                      setState(() {});
                    },
                  ),
                  UiDropDown(
                    controller: _bathController,
                    items: numbersList,
                    label: 'Bathrooms',
                    hint: 'bathrooms',
                  ),
                  UiDropDown(
                    controller: _bedController,
                    items: numbersList,
                    label: 'Bedrooms',
                    hint: 'Bedrooms',
                  ),
                  Button('Done')
                ],
              ),
            ),
          );
        });
      },
      constraints: BoxConstraints(maxHeight: screenSize(context).height),
      backgroundColor: AppColors.background,
      shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10))),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldState,
      backgroundColor: AppColors.background,
      appBar: AppBar(
        leadingWidth: 30,
        leading: Icon(
          AppIcons.arrow_left_2,
          color: Colors.black,
        ).paddingSymmetric(horizontal: 10),
        actions: [
          Icon(
            AppIcons.setting_5_bold,
            color: Colors.black,
          )
              .click(
                onTap: () => filter(),
              )
              .paddingSymmetric(horizontal: 10)
        ],
        title: Input(
          color: const Color.fromARGB(255, 219, 219, 219).withOpacity(.2),
          hintSize: 16,
          controller: TextEditingController(),
          hint: 'Search...',
        ),
      ),
      body: Consumer2<PropertyRepository, CityRespository>(
          builder: (context, repo, cityRepo, _) {
        return ListView.builder(
            itemCount: repo.paginatedData.data.length,
            physics: BouncingScrollPhysics(),
            itemExtent: 325,
            itemBuilder: (context, index) {
              return PropertyItem(
                repo.paginatedData.data[index],
                isArchived: isArchived(repo.paginatedData.data[index].id),
                archive: () {
                  setState(() {
                    if (!isArchived(repo.paginatedData.data[index].id)) {
                      archivedIds.add(repo.paginatedData.data[index].id);
                    } else
                      archivedIds.remove(repo.paginatedData.data[index].id);
                  });

                  setState(() {});
                },
                mRight: 20,
                mLeft: 20,
                mTop: 10,
                mBottom: index == repo.paginatedData.data.length ? 50 : 5,
              );
            }).align(alignment: Alignment.center);
      }),
    );
  }
}
