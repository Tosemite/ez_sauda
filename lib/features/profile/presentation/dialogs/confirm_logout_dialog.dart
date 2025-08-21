import 'package:auto_route/auto_route.dart';
import 'package:ez_sauda/core/presentation/bloc/app_bloc.dart';
import 'package:ez_sauda/core/presentation/bloc/app_event.dart';
import 'package:ez_sauda/core/presentation/extensions/context_extension.dart';
import 'package:ez_sauda/core/presentation/widgets/dialog/action_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ConfirmLogoutDialog extends StatelessWidget {
  const ConfirmLogoutDialog({super.key});

  static void show(BuildContext context) => ActionDialog.show(
        context,
        child: ConfirmLogoutDialog(),
      );

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            context.icons.exclamationCircle.svg(
              colorFilter: ColorFilter.mode(
                context.colors.primary,
                BlendMode.srcIn,
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Column(
                children: [
                  Text(
                    context.l10n.confirmLogout,
                    style:
                        context.typography.headline5Bold.copyWith(height: 1.5),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    context.l10n.yourDataWillBeSavedAfterLogout,
                    style: context.typography.bodyRegular.copyWith(height: 1.5),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        SizedBox(
          height: 36,
          child: Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  onPressed: context.router.pop,
                  child: Text(context.l10n.cancel),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  onPressed: () {
                    context.read<AppBloc>().add(AppLogout());
                    context.router.pop();
                  },
                  child: Text(context.l10n.yesLogout),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
