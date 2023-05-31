import 'package:cached_network_image/cached_network_image.dart';
import 'package:core_template/core/utils/extensions/extensions.dart';
import 'package:infinite_carousel/infinite_carousel.dart';

class Carousel extends StatelessWidget {
  const Carousel({
    required this.images,
    this.controller,
    super.key,
  });

  final List<String> images;
  final ScrollController? controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          InfiniteCarousel.builder(
            itemCount: images.length,
            itemExtent: screenSize(context).width,
            center: true,
            anchor: 0.0,
            velocityFactor: 0.2,
            onIndexChanged: (index) {},
            controller: controller,
            axisDirection: Axis.horizontal,
            loop: true,
            itemBuilder: (context, itemIndex, realIndex) {
              return CachedNetworkImage(
                imageUrl: images[itemIndex],
                fit: BoxFit.fill,
              );
            },
          ),
          Positioned(
            bottom: 10,
            width: screenSize(context).width,
            child: Container(
              color: AppColors.white,
              height: 50,
              child: InfiniteCarousel.builder(
                itemCount: images.length,
                itemExtent: 80,
                center: true,
                anchor: 0.0,
                velocityFactor: 0.2,
                onIndexChanged: (index) {},
                controller: controller,
                axisDirection: Axis.horizontal,
                loop: true,
                itemBuilder: (context, itemIndex, realIndex) {
                  return Container(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          color: Colors.grey, spreadRadius: 5, blurRadius: 2)
                    ]),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: CachedNetworkImage(
                        imageUrl: images[itemIndex],
                        fit: BoxFit.fill,
                      ).paddingSymmetric(horizontal: 5),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
