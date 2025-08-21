import 'package:auto_route/auto_route.dart';
import 'package:ez_sauda/core/presentation/extensions/context_extension.dart';
import 'package:ez_sauda/features/profile/presentation/dialogs/confirm_logout_dialog.dart';
import 'package:ez_sauda/features/profile/presentation/widgets/profile_action_tile.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                    //TODO fetch from backend
                    'https://images.pexels.com/photos/32935727/pexels-photo-32935727.jpeg?_gl=1*ifxe3c*_ga*NTU3MjMyMDQzLjE3NTMyNjM2ODU.*_ga_8JE65Q40S6*czE3NTMyNjM2ODUkbzEkZzEkdDE3NTMyNjM3MjEkajI0JGwwJGgw',
                  ),
                ),
                const SizedBox(width: 9),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Имя',
                        style: context.typography.headline5Regular,
                      ),
                      Text(
                        'Фамилия',
                        style: context.typography.headline5Regular.copyWith(
                          color: context.colors.secondary.withAlpha(115),
                        ),
                      ),
                    ],
                  ),
                ),
                context.icons.edit.svg(),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Divider(),
        ),
        ProfileActionTile(
          title: context.l10n.orderHistory,
          subtitle: context.l10n.orderHistoryDescription,
          onTap: () {},
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Divider(),
        ),
        ProfileActionTile(
          title: context.l10n.currentOrders,
          subtitle: context.l10n.currentOrdersDescription,
          onTap: () {},
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Divider(),
        ),
        ProfileActionTile(
          title: context.l10n.supplierList,
          subtitle: context.l10n.supplierListDescription,
          onTap: () {},
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Divider(),
        ),
        ProfileActionTile(
          title: context.l10n.yourReviews,
          subtitle: context.l10n.yourReviewsDescription,
          onTap: () {},
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Divider(),
        ),
        ProfileActionTile(
          title: context.l10n.password,
          subtitle: context.l10n.passwordDescription,
          onTap: () {},
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Divider(),
        ),
        ProfileActionTile(
          iconPath: context.icons.comment.path,
          title: context.l10n.customerSupport,
          subtitle: context.l10n.customerSupportDescription,
          inverse: true,
          onTap: () {},
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Divider(),
        ),
        ProfileActionTile(
          title: context.l10n.returnAndExchangeConditions,
          onTap: () {},
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Divider(),
        ),
        ProfileActionTile(
          title: context.l10n.complaints,
          onTap: () {},
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Divider(),
        ),
        ProfileActionTile(
          title: context.l10n.privacyPolicy,
          onTap: () {},
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Divider(),
        ),
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              foregroundColor: context.colors.error,
              side: BorderSide(
                color: context.colors.error,
              ),
            ),
            onPressed: () => ConfirmLogoutDialog.show(context),
            child: Text(context.l10n.logout),
          ),
        ),
      ],
    );
  }
}
