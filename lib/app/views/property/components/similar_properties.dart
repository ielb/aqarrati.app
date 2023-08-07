import 'package:core_template/app/components/property.dart';
import 'package:core_template/core/models/property/property.dart';
import 'package:core_template/core/repositories/property_repository.dart';
import 'package:core_template/core/utils/extensions/extensions.dart';
import 'package:provider/provider.dart';

class SimilarProperties extends StatelessWidget {
  const SimilarProperties({required this.slug, super.key});

  final String slug;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Property>>(
        future: Provider.of<PropertyRepository>(context)
            .fetchSimilarProperties(slug),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return SizedBox.shrink();
          }
          if (snapshot.data!.length == 0) {
            return SizedBox.shrink();
          }
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Similar properties',
                style: TextStyle(
                  color: AppColors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 315,
                width: screenSize(context).width,
                child: ListView.builder(
                    itemCount: snapshot.data!.length,
                    shrinkWrap: false,
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    itemExtent: 250,
                    itemBuilder: (context, index) {
                      return PropertyItem(snapshot.data![index]);
                    }),
              ).paddingSymmetric(vertical: 20),
            ],
          );
        });
  }
}
