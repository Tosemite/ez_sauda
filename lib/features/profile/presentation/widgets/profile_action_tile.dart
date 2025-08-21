import 'package:ez_sauda/core/presentation/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileActionTile extends StatelessWidget {
  const ProfileActionTile({
    required this.title,
    super.key,
    this.subtitle,
    this.iconPath,
    this.inverse = false,
    this.onTap,
  });

  final String title;
  final String? subtitle;
  final bool inverse;
  final String? iconPath;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final primaryColor =
        inverse ? context.colors.onPrimary : context.colors.secondary;
    final secondaryColor = inverse
        ? context.colors.surfaceContainer
        : context.colors.secondary.withAlpha(64);
    final subtitle = this.subtitle;
    final iconPath = this.iconPath;
    Widget widget = InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12),
        child: Row(
          children: [
            if (iconPath != null)
              SvgPicture.asset(
                iconPath,
                colorFilter: ColorFilter.mode(
                  primaryColor,
                  BlendMode.srcIn,
                ),
              ),
            const SizedBox(width: 8),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: context.typography.bodyRegular.copyWith(
                      color: primaryColor,
                    ),
                  ),
                  if (subtitle != null)
                    Padding(
                      padding: const EdgeInsets.only(top: 2),
                      child: Text(
                        subtitle,
                        style: context.typography.footnoteDescription.copyWith(
                          color: secondaryColor,
                        ),
                      ),
                    ),
                ],
              ),
            ),
            context.icons.arrowRight.svg(
              colorFilter: ColorFilter.mode(
                inverse
                    ? context.colors.onPrimary
                    : context.colors.inverseSurface,
                BlendMode.srcIn,
              ),
            ),
          ],
        ),
      ),
    );
    if (inverse) {
      widget = Material(
        color: context.colors.primary,
        child: widget,
      );
    }
    return widget;
  }
}
