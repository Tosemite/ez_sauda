import 'package:ez_sauda/core/presentation/extensions/context_extension.dart';
import 'package:flutter/material.dart';

//TODO use info from order
class OrderResponsibleCard extends StatelessWidget {
  const OrderResponsibleCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: context.colors.surface,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          context.icons.userAvatar.svg(),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Бектас Туржанов',
                  style: context.typography.bodyRegular,
                ),
                Text(
                  'Проектный менеджер',
                  style: context.typography.bodyRegular.copyWith(
                    color: context.colors.secondary.withAlpha(115),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
