import 'package:auto_route/auto_route.dart';
import 'package:ez_sauda/core/presentation/bloc/app_bloc.dart';
import 'package:ez_sauda/core/presentation/bloc/app_state.dart';
import 'package:ez_sauda/core/presentation/extensions/context_extension.dart';
import 'package:ez_sauda/features/auth/presentation/dialogs/login_dialog.dart';
import 'package:ez_sauda/features/cart/presentation/blocs/cart_bloc.dart';
import 'package:ez_sauda/features/cart/presentation/blocs/cart_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  BottomNavigationBarItem _buildNavBarItem(
    BuildContext context,
    bool selected,
    String svgIconPath,
    String label,
  ) {
    return BottomNavigationBarItem(
      label: label,
      icon: SvgPicture.asset(
        svgIconPath,
        colorFilter: ColorFilter.mode(
          selected
              ? context.colors.primary
              : context.colors.secondary.withAlpha(115),
          BlendMode.srcIn,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final tabsRouter = AutoTabsRouter.of(context);

    return DecoratedBox(
      decoration: BoxDecoration(
        color: context.colors.onPrimary,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(13),
            blurRadius: 10,
            offset: Offset(0, -2),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: BlocConsumer<AppBloc, AppState>(
          listenWhen: (prev, curr) => prev.isAuthorized != curr.isAuthorized,
          listener: (context, state) {
            if (!state.isAuthorized) {
              tabsRouter.setActiveIndex(0);
            }
          },
          builder: (context, state) {
            return BottomNavigationBar(
              elevation: 0,
              currentIndex: tabsRouter.activeIndex,
              selectedFontSize: 12,
              unselectedFontSize: 12,
              onTap: (index) {
                if (index == 2 && !state.isAuthorized) {
                  LoginDialog.show(context);
                } else {
                  tabsRouter.setActiveIndex(index);
                }
              },
              type: BottomNavigationBarType.fixed,
              showUnselectedLabels: true,
              items: [
                _buildNavBarItem(
                  context,
                  tabsRouter.activeIndex == 0,
                  context.icons.home.path,
                  context.l10n.home,
                ),
                _buildNavBarItem(
                  context,
                  tabsRouter.activeIndex == 1,
                  context.icons.catalog.path,
                  context.l10n.catalog,
                ),
                if (state.isAuthorized) ...[
                  BottomNavigationBarItem(
                    label: context.l10n.cart,
                    icon: BlocBuilder<CartBloc, CartState>(
                      builder: (context, state) {
                        return Badge.count(
                          count: state.totalItemCount,
                          isLabelVisible: state.totalItemCount != 0,
                          child: SvgPicture.asset(
                            context.icons.shoppingCart.path,
                            colorFilter: ColorFilter.mode(
                              tabsRouter.activeIndex == 2
                                  ? context.colors.primary
                                  : context.colors.secondary.withAlpha(115),
                              BlendMode.srcIn,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  _buildNavBarItem(
                    context,
                    tabsRouter.activeIndex == 3,
                    context.icons.heart.path,
                    context.l10n.favorite,
                  ),
                  _buildNavBarItem(
                    context,
                    tabsRouter.activeIndex == 4,
                    context.icons.user.path,
                    context.l10n.profile,
                  ),
                ] else
                  _buildNavBarItem(
                    context,
                    false,
                    context.icons.exit.path,
                    context.l10n.logIn,
                  ),
              ],
            );
          },
        ),
      ),
    );
  }
}
