import 'package:ez_sauda/core/presentation/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class ImageCarousel extends StatefulWidget {
  const ImageCarousel({
    required this.imageUrls,
    super.key,
  });

  final List<String> imageUrls;

  @override
  State<ImageCarousel> createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  final PageController _controller = PageController();

  int _currentIndex = 0;

  void updateIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: context.colors.outline),
      ),
      child: Stack(
        fit: StackFit.passthrough,
        children: [
          PageView.builder(
            controller: _controller,
            onPageChanged: updateIndex,
            itemCount: widget.imageUrls.length,
            itemBuilder: (_, i) => DecoratedBox(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    widget.imageUrls[i],
                  ),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            left: 0,
            right: 0,
            child: Center(
              child: ColoredBox(
                color: context.colors.outline,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    for (int i = 0; i < widget.imageUrls.length; i++)
                      Container(
                        height: 3,
                        width: i == _currentIndex ? 24 : 16,
                        margin: EdgeInsets.symmetric(
                          horizontal: 3,
                          vertical: 2,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(1),
                          color: i == _currentIndex
                              ? context.colors.onPrimary
                              : context.colors.onPrimary.withAlpha(77),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
