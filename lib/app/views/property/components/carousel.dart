import 'package:core_template/core/utils/extensions/extensions.dart';
import 'package:infinite_carousel/infinite_carousel.dart';

// ignore: must_be_immutable
class Carousel extends StatelessWidget {
  Carousel({
    required this.images,
    this.controller,
    super.key,
  });

  final List<String> images;
  final InfiniteScrollController? controller;

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(builder: (context, setState) {
      return Stack(
        children: [
          InfiniteCarousel.builder(
            itemCount: images.length,
            itemExtent: screenSize(context).width,
            center: true,
            anchor: 0.0,
            velocityFactor: 0.2,
            onIndexChanged: (index) {
              setState(() {
                currentIndex = index;
                controller?.animateToItem(index);
              });
            },
            axisDirection: Axis.horizontal,
            loop: true,
            itemBuilder: (context, itemIndex, realIndex) {
              return Image.network(
                images[currentIndex],
                fit: BoxFit.fill,
              );
            },
          ),
          Visibility(
            visible: images.length > 1,
            child: Positioned(
              bottom: 10,
              width: screenSize(context).width,
              child: Container(
                color: AppColors.transparent,
                height: 50,
                child: InfiniteCarousel.builder(
                  itemCount: images.length,
                  itemExtent: 80,
                  center: true,
                  anchor: 0.0,
                  velocityFactor: 0.2,
                  onIndexChanged: (index) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  controller: controller,
                  axisDirection: Axis.horizontal,
                  loop: true,
                  itemBuilder: (context, itemIndex, realIndex) {
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          image: DecorationImage(
                              colorFilter: itemIndex != currentIndex
                                  ? ColorFilter.mode(
                                      AppColors.black.withOpacity(.4),
                                      BlendMode.darken)
                                  : null,
                              fit: BoxFit.fill,
                              image: NetworkImage(
                                images[itemIndex],
                              ))),
                    ).click(onTap: () {
                      print(itemIndex);
                      setState(() {
                        currentIndex = itemIndex;
                        controller?.animateToItem(itemIndex);
                      });
                    });
                  },
                ),
              ),
            ),
          ),
        ],
      );
    });
  }
}
