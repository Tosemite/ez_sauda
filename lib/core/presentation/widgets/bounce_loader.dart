import 'dart:math' as math show sin, pi;
import 'package:ez_sauda/core/presentation/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class BounceLoader extends StatefulWidget {
  const BounceLoader({
    super.key,
    this.size = 50.0,
    this.duration = const Duration(milliseconds: 1400),
    this.controller,
  });

  final double size;
  final Duration duration;
  final AnimationController? controller;

  @override
  State<BounceLoader> createState() => _BounceLoaderState();
}

class _BounceLoaderState extends State<BounceLoader>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = (widget.controller ??
        AnimationController(vsync: this, duration: widget.duration))
      ..repeat();
  }

  @override
  void dispose() {
    if (widget.controller == null) {
      _controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
      size: Size(widget.size * 2, widget.size),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(3, (i) {
          return ScaleTransition(
            scale: DelayTween(begin: 0.0, end: 1.0, delay: i * .2)
                .animate(_controller),
            child: SizedBox.fromSize(
              size: Size.square(widget.size * 0.5),
              child: _itemBuilder(i),
            ),
          );
        }),
      ),
    );
  }

  Widget _itemBuilder(int index) => DecoratedBox(
        decoration: BoxDecoration(
          color: context.colors.onPrimary,
          shape: BoxShape.circle,
        ),
      );
}

class DelayTween extends Tween<double> {
  DelayTween({required this.delay, super.begin, super.end});

  final double delay;

  @override
  double lerp(double t) =>
      super.lerp((math.sin((t - delay) * 2 * math.pi) + 1) / 2);

  @override
  double evaluate(Animation<double> animation) => lerp(animation.value);
}
