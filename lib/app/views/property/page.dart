import 'package:core_template/app/resources/icons.dart';
import 'package:core_template/app/views/property/components/carousel.dart';
import 'package:core_template/app/views/property/components/similar_properties.dart';
import 'package:core_template/core/models/property/property.dart';
import 'package:core_template/core/repositories/property_repository.dart';
import 'package:core_template/core/utils/extensions/extensions.dart';
import 'package:infinite_carousel/infinite_carousel.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class PropertyPage extends StatefulWidget {
  const PropertyPage(this.slug, {super.key});
  final String slug;

  static const name = 'property_page';

  @override
  State<PropertyPage> createState() => _PropertyPageState();
}

class _PropertyPageState extends State<PropertyPage> {
  final formatCurrency = new NumberFormat.currency(
      locale: 'fr_MA', symbol: 'MAD', decimalDigits: 0);
  InfiniteScrollController _controller = InfiniteScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<Property?>(
          initialData: null,
          future: Provider.of<PropertyRepository>(context)
              .fetchProperty(widget.slug),
          builder: (context, snapshot) {
            if (!snapshot.hasData)
              return SizedBox(
                height: screenSize(context).height,
                width: screenSize(context).width,
                child: CircularProgressIndicator().center(),
              );
            return CustomScrollView(
              slivers: [
                SliverAppBar(
                  expandedHeight: 250,
                  backgroundColor: AppColors.transparent,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Container(
                      foregroundDecoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                            AppColors.black.withOpacity(.4),
                            Colors.transparent,
                          ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter)),
                      child: Carousel(
                        images: snapshot.data!.images,
                        controller: _controller,
                      ),
                    ),
                  ),
                  leading: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(8),
                    padding: EdgeInsets.all(10),
                    decoration: UiDecoration.glassMorphismDecoration(50),
                    child: Icon(
                      AppIcons.arrow_left_2,
                      size: 20,
                    ),
                  ).click(onTap: () {
                    Navigator.pop(context);
                  }),
                  actions: [
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(8),
                      padding: EdgeInsets.all(10),
                      decoration: UiDecoration.glassMorphismDecoration(50),
                      child: Icon(
                        AppIcons.archive_1,
                        size: 20,
                      ),
                    )
                  ],
                ),
                SliverList(
                    delegate: SliverChildListDelegate([
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              formatCurrency.format(snapshot.data!.price),
                              style: TextStyle(
                                  color: AppColors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  overflow: TextOverflow.clip),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 10),
                              decoration: BoxDecoration(
                                color: Colors.blue.shade500.withOpacity(.3),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: Text(
                                snapshot.data!.for_.name,
                                style: TextStyle(
                                  color: Colors.blue.shade500,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ).paddingOnly(
                          bottom: 15,
                        ),
                        Text(
                          snapshot.data!.title,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: AppColors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          snapshot.data!.address,
                          style: TextStyle(
                            color: Colors.grey.shade500,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ).paddingOnly(bottom: 10, top: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  AppIcons.bed,
                                  color: AppColors.primary,
                                  size: 20,
                                ).paddingOnly(right: 15),
                                Text(
                                  snapshot.data!.rooms != null
                                      ? '${snapshot.data!.rooms} Bed'
                                      : 'N/A',
                                  style: TextStyle(
                                      color: AppColors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                      overflow: TextOverflow.ellipsis),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  AppIcons.bathroom,
                                  color: AppColors.primary,
                                  size: 20,
                                ).paddingOnly(right: 5),
                                Text(
                                  snapshot.data!.bathrooms != null
                                      ? '${snapshot.data!.bathrooms} Baths'
                                      : 'N/A',
                                  style: TextStyle(
                                      color: AppColors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                      overflow: TextOverflow.ellipsis),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  AppIcons.plan,
                                  color: AppColors.primary,
                                  size: 20,
                                ).paddingOnly(right: 5),
                                Text(
                                  snapshot.data!.area != null
                                      ? '${snapshot.data!.area} m²'
                                      : 'N/A',
                                  style: TextStyle(
                                      color: AppColors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                      overflow: TextOverflow.ellipsis),
                                ),
                              ],
                            ),
                          ],
                        ).paddingOnly(bottom: 5, top: 5),
                        Row(
                          children: [
                            Divider(
                              endIndent: 10,
                              height: 0,
                              color: Colors.grey.withOpacity(1),
                              thickness: .2,
                            ).expandIt(),
                          ],
                        ).paddingSymmetric(vertical: 15),
                        Text(
                          'Listing Agent',
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: AppColors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 50,
                              width: 50,
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(
                                  'https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1160&q=80',
                                ),
                              ),
                            ).paddingOnly(right: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Listing Agent',
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color: AppColors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  '15 properties',
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color: AppColors.gray,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.all(8),
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: AppColors.primary.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(70)),
                              child: Icon(
                                AppIcons.message_bold,
                                size: 24,
                                color: AppColors.primary,
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.all(8),
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: AppColors.primary.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(70)),
                              child: Icon(
                                AppIcons.call_bold,
                                size: 24,
                                color: AppColors.primary,
                              ),
                            )
                          ],
                        ).paddingSymmetric(vertical: 10),
                        Text(
                          'Overview',
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: AppColors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ).paddingSymmetric(vertical: 10),
                        Text(snapshot.data!.description != null
                                ? snapshot.data!.description!
                                : 'N/A')
                            .paddingOnly(bottom: 15),
                        SimilarProperties(slug: widget.slug),
                      ],
                    ),
                  )
                ]))
              ],
            );
          }),
    );
  }
}
