import 'package:flutter/cupertino.dart' hide RefreshCallback;
import 'package:flutter/foundation.dart' show defaultTargetPlatform;
import 'package:flutter/material.dart';

class AdaptiveRefreshIndicator extends StatelessWidget {
  const AdaptiveRefreshIndicator({
    required this.itemCount,
    required this.itemBuilder,
    required this.onRefresh,
    super.key,
  });

  final RefreshCallback onRefresh;
  final int itemCount;
  final Widget Function(BuildContext, int) itemBuilder;

  Widget android() {
    return RefreshIndicator(
      onRefresh: onRefresh,
      child: ListView.builder(
        itemCount: itemCount,
        itemBuilder: itemBuilder,
      ),
    );
  }

  Widget ios() {
    return CustomScrollView(
      slivers: [
        CupertinoSliverRefreshControl(
          onRefresh: onRefresh,
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            itemBuilder,
            childCount: itemCount,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android();
      case TargetPlatform.iOS:
      default:
        return ios();
    }
  }
}
