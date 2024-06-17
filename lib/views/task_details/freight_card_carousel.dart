import "package:carousel_slider/carousel_slider.dart";
import "package:flutter/material.dart" hide BoxDecoration, BoxShadow;
import "package:flutter_hooks/flutter_hooks.dart";
import "package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart";
import "package:vp_kuljetus_driver_app/views/task_details/freight_card.dart";

class FreightCardCarousel extends HookWidget {
  const FreightCardCarousel({
    super.key,
    required this.freightIds,
    required this.readOnly,
  });

  final List<String> freightIds;
  final bool readOnly;

  @override
  Widget build(final context) {
    final carouselController = useState(CarouselController());
    final currentPage = useState(0);

    final onFirstPage = currentPage.value == 0;
    final onLastPage = currentPage.value == freightIds.length - 1;

    previousPage() => carouselController.value.previousPage(
          duration: const Duration(milliseconds: 300),
          curve: Curves.fastOutSlowIn,
        );

    nextPage() => carouselController.value.nextPage(
          duration: const Duration(milliseconds: 300),
          curve: Curves.fastOutSlowIn,
        );

    return Column(
      children: [
        Expanded(
          child: CarouselSlider(
            disableGesture: true,
            items: freightIds
                .map(
                  (final freightId) => DecoratedBox(
                    position: DecorationPosition.foreground,
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, -4),
                          blurRadius: 4,
                          spreadRadius: -4,
                          color: Colors.black54,
                          inset: true,
                        ),
                        BoxShadow(
                          offset: Offset(0, 4),
                          blurRadius: 4,
                          spreadRadius: -4,
                          color: Colors.black54,
                          inset: true,
                        ),
                      ],
                    ),
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: FreightCard(
                          freightId: freightId,
                          readOnly: readOnly,
                        ),
                      ),
                    ),
                  ),
                )
                .toList(),
            carouselController: carouselController.value,
            options: CarouselOptions(
              autoPlay: false,
              enableInfiniteScroll: false,
              disableCenter: true,
              viewportFraction: 1,
              scrollPhysics: const NeverScrollableScrollPhysics(),
              onPageChanged: (final index, final reason) =>
                  currentPage.value = index,
            ),
          ),
        ),
        if (freightIds.length > 1)
          Material(
            elevation: 20,
            color: Colors.white,
            surfaceTintColor: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: !onFirstPage ? previousPage : null,
                  ),
                  Text("${currentPage.value + 1} / ${freightIds.length}"),
                  IconButton(
                    icon: const Icon(Icons.arrow_forward),
                    onPressed: !onLastPage ? nextPage : null,
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }
}
