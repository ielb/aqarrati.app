import 'package:cached_network_image/cached_network_image.dart';
import 'package:core_template/app/resources/icons.dart';
import 'package:core_template/core/models/property/property.dart';
import 'package:core_template/core/utils/extensions/extensions.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class PropertyItem extends StatelessWidget {
  PropertyItem(this.property,
      {super.key, this.isArchived = false, this.archive});
  final formatCurrency = new NumberFormat.currency(
      locale: 'fr_MA', symbol: 'MAD', decimalDigits: 0);
  final Property property;
  final bool isArchived;

  final Function()? archive;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxHeight: 300, maxWidth: 280),
      width: 280,
      padding: EdgeInsets.all(9),
      margin: EdgeInsets.only(right: 20, bottom: 5),
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
                child: CachedNetworkImage(
                  imageUrl: property.thumbnail,
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Icon(
                        AppIcons.bed,
                        color: AppColors.primary,
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
                        color: AppColors.primary,
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
                        color: AppColors.primary,
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
            right: 5,
            top: 5,
            child: Container(
              padding: EdgeInsets.all(5),
              alignment: Alignment.center,
              child: Icon(
                AppIcons.archive_bold,
                color: isArchived ? AppColors.secondary : AppColors.white,
              ).click(onTap: archive),
              decoration: BoxDecoration(
                  color: Color.fromARGB(111, 206, 206, 206).withOpacity(.5),
                  borderRadius: BorderRadius.circular(10)),
            ),
          )
        ],
      ),
    );
  }
}
