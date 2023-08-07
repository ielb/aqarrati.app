import 'package:core_template/app/resources/icons.dart';
import 'package:core_template/app/views/property/page.dart';
import 'package:core_template/core/models/property/property.dart';
import 'package:core_template/core/utils/extensions/extensions.dart';
import 'package:core_template/core/utils/formats/price_format.dart';
import 'package:google_fonts/google_fonts.dart';

class PropertyItem extends StatelessWidget {
  PropertyItem(this.property,
      {super.key,
      this.isArchived = false,
      this.archive,
      this.mBottom = 5,
      this.mLeft = 0,
      this.mTop = 0,
      this.mRight = 20});

  final Property property;
  final bool isArchived;
  final double mRight;
  final double mBottom;
  final double mLeft;
  final double mTop;

  final Function()? archive;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxHeight: 300, maxWidth: 280),
      width: 280,
      padding: EdgeInsets.all(9),
      margin: EdgeInsets.only(
          right: mRight, bottom: mBottom, top: mTop, left: mLeft),
      decoration: BoxDecoration(
          color: AppColors.background,
          borderRadius: BorderRadius.circular(15.0),
          border: Border.all(
            color: AppColors.black.withOpacity(.1),
          )),
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.network(
                  property.thumbnail,
                  height: 160,
                  width: 350,
                  fit: BoxFit.cover,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    formatCurrency.format(property.price),
                    style: TextStyle(
                        color: AppColors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        overflow: TextOverflow.clip),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 6, horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade500.withOpacity(.3),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Text(
                      property.for_.name,
                      style: TextStyle(
                          color: Colors.blue.shade500,
                          fontSize: 13,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ).paddingSymmetric(vertical: 5),
              Text(
                property.title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.poppins(
                  color: AppColors.black,
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    AppIcons.location,
                    color: Colors.grey.shade400,
                  ).paddingOnly(right: 5),
                  Text(
                    '${property.address}',
                    style: TextStyle(
                        color: Colors.grey.shade400,
                        fontSize: 13,
                        overflow: TextOverflow.ellipsis),
                  ).makeItFlexible(),
                ],
              ).paddingOnly(bottom: 5, top: 5),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        AppIcons.bed,
                        color: AppColors.primary.withOpacity(.6),
                        size: 18,
                      ).paddingOnly(right: 15),
                      Text(
                        '${property.rooms != null ? property.rooms!.toString() + ' Bed' : 'N/A'}',
                        style: TextStyle(
                            color: Colors.grey.shade400,
                            fontSize: 13,
                            overflow: TextOverflow.ellipsis),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        AppIcons.bathroom,
                        color: AppColors.primary.withOpacity(.6),
                        size: 18,
                      ).paddingOnly(right: 5),
                      Text(
                        '${property.bathrooms != null ? property.bathrooms!.toString() + ' Bath' : 'N/A'}',
                        style: TextStyle(
                            color: Colors.grey.shade400,
                            fontSize: 13,
                            overflow: TextOverflow.ellipsis),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        AppIcons.plan,
                        color: AppColors.primary.withOpacity(.6),
                        size: 18,
                      ).paddingOnly(right: 5),
                      Text(
                        '${property.area != null ? property.area!.toStringAsFixed(0) + ' m²' : 'N/A'}',
                        style: TextStyle(
                            color: Colors.grey.shade400,
                            fontSize: 13,
                            overflow: TextOverflow.ellipsis),
                      ),
                    ],
                  ),
                ],
              ).paddingOnly(bottom: 5, top: 5)
            ],
          ),
          Positioned(
            right: 4,
            top: 4,
            child: Container(
              padding: EdgeInsets.all(5),
              alignment: Alignment.center,
              child: Icon(
                AppIcons.archive_bold,
                color: isArchived ? AppColors.secondary : AppColors.white,
              ).click(onTap: archive),
              decoration: UiDecoration.glassMorphismDecoration(10),
            ),
          ),
          Positioned(
            left: 4,
            top: 4,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 3, horizontal: 10),
              alignment: Alignment.center,
              child: Text(
                property.for_.name,
                style: TextStyle(color: AppColors.white),
              ),
              decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(8)),
            ),
          )
        ],
      ),
    ).click(onTap: () {
      Navigator.pushNamed(context, PropertyPage.name, arguments: property.slug);
    });
  }
}
