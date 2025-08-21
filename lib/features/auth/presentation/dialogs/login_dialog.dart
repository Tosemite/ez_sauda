import 'package:auto_route/auto_route.dart';
import 'package:ez_sauda/core/presentation/bloc/base_state.dart';
import 'package:ez_sauda/core/presentation/extensions/context_extension.dart';
import 'package:ez_sauda/core/presentation/snack_bars/show_error_snack_bar.dart';
import 'package:ez_sauda/core/presentation/widgets/bounce_loader.dart';
import 'package:ez_sauda/core/presentation/widgets/dialog/action_dialog.dart';
import 'package:ez_sauda/core/presentation/widgets/form/password_text_field.dart';
import 'package:ez_sauda/features/auth/presentation/blocs/login_cubit.dart';
import 'package:ez_sauda/features/auth/presentation/blocs/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginDialog extends StatelessWidget {
  const LoginDialog({super.key});

  static Future<bool?> show(BuildContext context) => ActionDialog.show(
        context,
        child: LoginDialog(),
      );

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginCubit>(
      create: (_) => context.di<LoginCubit>(),
      child: BlocConsumer<LoginCubit, LoginState>(
        listenWhen: (prev, curr) => prev.submitState != curr.submitState,
        listener: (context, state) {
          switch (state.submitState) {
            case BaseSuccess():
              context.router.maybePop(true);
            case BaseFailure(failure: final failure):
              showErrorSnackBar(context, failure.message);
            default:
              //pass
          }
        },
        builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                context.l10n.logInToAccess,
                style: context.typography.headline5Bold,
              ),
              const SizedBox(height: 16),
              Text(
                context.l10n.username,
                style: context.typography.bodyRegular,
              ),
              const SizedBox(height: 4),
              TextField(
                onChanged: context.read<LoginCubit>().loginChanged,
              ),
              const SizedBox(height: 8),
              Text(
                context.l10n.password,
                style: context.typography.bodyRegular,
              ),
              const SizedBox(height: 4),
              PasswordTextField(
                onChanged: context.read<LoginCubit>().passwordChanged,
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: context.read<LoginCubit>().submitForm,
                child: state.submitState is BaseInProgress
                    ? BounceLoader(size: 30)
                    : Text(
                        context.l10n.logIn,
                      ),
              ),
              const SizedBox(height: 8),
              Text(
                context.l10n.byClickingYouAcceptTerms,
                style: context.typography.bodyRegular.copyWith(
                  color: context.colors.outline,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          );
        },
      ),
    );
  }
}
