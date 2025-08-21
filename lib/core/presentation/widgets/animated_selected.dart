import 'package:flutter/material.dart';

class AnimatedSelected extends StatefulWidget {
  const AnimatedSelected({
    required this.colorTween,
    required this.builder,
    super.key,
    this.selected = false,
    this.secondaryColorTween,
  });

  final bool selected;
  final ColorTween colorTween;
  final ColorTween? secondaryColorTween;
  final Widget Function(BuildContext, Color?, Color?) builder;

  @override
  State<AnimatedSelected> createState() => _AnimatedSelectedState();
}

class _AnimatedSelectedState extends State<AnimatedSelected>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 200,
      ),
    );
    if (widget.selected) {
      _controller.value = 1;
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant AnimatedSelected oldWidget) {
    if (widget.selected) {
      _controller.animateTo(1);
    } else {
      _controller.animateBack(0);
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, _) {
        return widget.builder(
          context,
          widget.colorTween.evaluate(_controller),
          widget.secondaryColorTween?.evaluate(_controller),
        );
      },
    );
  }
}
