import 'package:core_template/core/models/city/city.dart';
import 'package:core_template/core/utils/extensions/extensions.dart';

class CityWidget extends StatelessWidget {
  const CityWidget(this.city, {super.key, this.click});
  final City city;
  final Function()? click;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      child: Stack(
        children: [
          Container(
            height: 200,
            width: 170,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            alignment: Alignment.bottomLeft,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: NetworkImage(
                  city.image!,
                ),
                filterQuality: FilterQuality.high,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: 200,
            width: 170,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            alignment: Alignment.bottomLeft,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(colors: [
                  AppColors.black.withOpacity(.6),
                  Colors.transparent,
                ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
            child: Text.rich(
              TextSpan(text: city.name_en + '\n', children: [
                TextSpan(
                    text: '(${city.propertyCount.toString()})',
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: AppColors.background))
              ]),
              softWrap: true,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: AppColors.background),
            ),
          ),
        ],
      ),
    ).click(onTap: click);
  }
}
