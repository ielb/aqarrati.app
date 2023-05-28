import 'package:core_template/app/components/input.dart';
import 'package:core_template/app/components/property.dart';
import 'package:core_template/app/resources/icons.dart';
import 'package:core_template/app/views/auth/login/page.dart';
import 'package:core_template/core/config/contants/icons.dart';
import 'package:core_template/core/repositories/property_repository.dart';
import 'package:core_template/core/utils/extensions/extensions.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  static const name = 'home_page';

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late TapGestureRecognizer _onTapRecognizer;
  final List<String> archivedIds = [];
  final List<PropertyType> propertyTypes = [
    PropertyType(ConstIcons.house, 'House'),
    PropertyType(ConstIcons.villa, 'Villa'),
    PropertyType(ConstIcons.appartment, 'Appartment'),
    PropertyType(ConstIcons.office, 'Office')
  ];

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Consumer<PropertyRepository>(builder: (context, repo, _) {
        return SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Input(
                  icon: Icon(
                    AppIcons.search_normal_1,
                    color: Colors.black,
                  ),
                  sufficIcon: Icon(
                    AppIcons.setting_5_bold,
                    color: Colors.black,
                  ).click(
                    onTap: () {},
                  ),
                  color: AppColors.gray.withOpacity(.02),
                  hintSize: 16,
                  controller: TextEditingController(),
                  hint: 'Search...',
                ),
                SizedBox(
                  height: 130,
                  width: screenSize(context).width,
                  child: ListView.builder(
                      itemCount: propertyTypes.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      itemExtent: 100,
                      itemBuilder: (context, index) {
                        return Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.only(right: 10, bottom: 5),
                          decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: AppColors.gray.withOpacity(.2))),
                          child: Column(children: [
                            SvgPicture.asset(
                              propertyTypes[index].icon,
                              height: 70,
                              width: 800,
                              color: AppColors.primary,
                            ),
                            Text(propertyTypes[index].name)
                                .paddingOnly(top: 10)
                                .makeItFlexible()
                          ]),
                        );
                      }),
                ).paddingSymmetric(vertical: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Recommandation',
                      style: TextStyle(
                          color: AppColors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'See all',
                      style: TextStyle(color: AppColors.primary),
                    ).click(onTap: () {
                      //Navigator.of(context).pushNamed(PropertyPage.name);
                    }),
                  ],
                ),
                SizedBox(
                  height: 315,
                  width: screenSize(context).width,
                  child: ListView.builder(
                      itemCount: repo.paginatedData.data.length,
                      shrinkWrap: false,
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      itemExtent: 250,
                      itemBuilder: (context, index) {
                        return PropertyItem(
                          repo.paginatedData.data[index],
                          isArchived:
                              isArchived(repo.paginatedData.data[index].id),
                          archive: () {
                            setState(() {
                              if (!isArchived(
                                  repo.paginatedData.data[index].id)) {
                                archivedIds
                                    .add(repo.paginatedData.data[index].id);
                              } else
                                archivedIds
                                    .remove(repo.paginatedData.data[index].id);
                            });

                            setState(() {});
                          },
                        );
                      }),
                ).paddingOnly(top: 20)
              ],
            ),
          ),
        );
      }),
    );
  }
}

class PropertyType {
  final String name;
  final String icon;

  const PropertyType(this.icon, this.name);
}
