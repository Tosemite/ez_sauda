import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const colorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xFF38B2AC),
  onPrimary: Color(0xFFFFFFFF),
  secondary: Color(0xFF000000),
  onSecondary: Color(0xFFFFFFFF),
  secondaryContainer: Color(0xFF52C41A),
  error: Color(0xFFFF4D4F),
  onError: Color(0xFFFFFFFF),
  surface: Color(0xFFFAFAFA),
  inverseSurface: Color(0xFF595959),
  onSurface: Color(0xFFD1D1D1),
  onSurfaceVariant: Color(0xFFF6F6F6),
  outline: Color(0xFFD9D9D9),
  outlineVariant: Color(0xFFF5F5F5),
  surfaceContainer: Color(0xFF78EEE9),
  surfaceContainerHigh: Color(0xFF5E5E5E),
);

ThemeData theme() {
  final typography = AppTypography();
  final inputDecorationBorder = OutlineInputBorder(
    borderSide: BorderSide(width: 1, color: colorScheme.outline),
    borderRadius: BorderRadius.circular(12),
  );
  final inputDecorationTheme = InputDecorationTheme(
    contentPadding: EdgeInsets.symmetric(
      vertical: 11,
      horizontal: 16,
    ),
    floatingLabelBehavior: FloatingLabelBehavior.never,
    suffixIconColor: colorScheme.secondary,
    prefixIconColor: colorScheme.secondary,
    prefixStyle: typography.bodyRegular,
    hintStyle: typography.bodyRegular.copyWith(
      color: colorScheme.secondary.withAlpha(64),
    ),
    labelStyle: typography.bodyRegular.copyWith(
      color: colorScheme.outlineVariant,
    ),
    border: inputDecorationBorder,
    enabledBorder: inputDecorationBorder,
    focusedBorder: inputDecorationBorder,
    disabledBorder: inputDecorationBorder,
  );
  return ThemeData(
    // scary
    useMaterial3: false,
    splashFactory: InkSplash.splashFactory,
    fontFamily: 'Roboto',
    shadowColor: const Color(0xFF434E61),
    canvasColor: colorScheme.onPrimary,
    colorScheme: colorScheme,
    textTheme: TextTheme(
      titleMedium: typography.bodyRegular,
    ),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: colorScheme.primary,
      selectionColor: colorScheme.primary,
      selectionHandleColor: colorScheme.primary,
    ),
    inputDecorationTheme: inputDecorationTheme,
    dialogTheme: DialogThemeData(
      barrierColor: const Color(0x40000000),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: colorScheme.onPrimary,
        disabledForegroundColor: colorScheme.onPrimary,
        backgroundColor: colorScheme.primary,
        disabledBackgroundColor: colorScheme.outline,
        textStyle: typography.bodyRegular,
        minimumSize: Size(0, 48),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
        elevation: 0,
      ),
    ),
    tabBarTheme: TabBarThemeData(
      labelColor: colorScheme.primary,
      indicatorColor: colorScheme.primary,
      unselectedLabelColor: colorScheme.secondary,
      unselectedLabelStyle: typography.bodyRegular,
      labelStyle: typography.bodyRegular,
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: colorScheme.primary,
        textStyle: typography.bodyRegular,
        minimumSize: Size(0, 48),
        side: BorderSide(
          color: colorScheme.primary,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        elevation: 0,
      ),
    ),
    appBarTheme: AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle.dark,
      elevation: 0,
      backgroundColor: colorScheme.onSecondary,
      titleTextStyle: typography.headline5Medium.copyWith(
        color: colorScheme.secondary,
      ),
      foregroundColor: colorScheme.secondary,
      centerTitle: false,
    ),
    iconTheme: IconThemeData(color: colorScheme.secondary),
    primaryIconTheme: IconThemeData(color: colorScheme.primary),
    dividerTheme: DividerThemeData(
      color: colorScheme.outlineVariant,
      thickness: 0.5,
      space: 0.5,
    ),
    progressIndicatorTheme: ProgressIndicatorThemeData(
      color: colorScheme.primary,
      borderRadius: BorderRadius.circular(5),
    ),
    checkboxTheme: CheckboxThemeData(
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      fillColor: WidgetStateProperty.resolveWith((states) {
        if (states.any((element) => element == WidgetState.selected)) {
          return colorScheme.primary;
        }
        return null;
      }),
      shape: RoundedRectangleBorder(
        side: BorderSide(
          width: 1.5,
          color: colorScheme.outline,
        ),
        borderRadius: BorderRadius.circular(2),
      ),
    ),
    badgeTheme: BadgeThemeData(
      largeSize: 14,
      textStyle: TextStyle(
        fontSize: 10,
      ),
      backgroundColor: colorScheme.primary,
    ),
    //For keeping theme data for custom widgets
    extensions: const [],
  );
}

class AppTypography {
  const AppTypography();

  TextStyle get headline5Bold => TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 16,
        height: 1.1,
        letterSpacing: 0,
      );

  TextStyle get headline5Medium => TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 16,
        height: 1.1,
        letterSpacing: 0,
      );

  TextStyle get headline5Regular => TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 16,
        height: 1.1,
        letterSpacing: 0,
      );

  TextStyle get headline4Medium => TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 20,
    height: 1.1,
    letterSpacing: 0,
  );

  TextStyle get headline3Regular => TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 24,
    height: 1.1,
    letterSpacing: 0,
  );

  TextStyle get headline3Medium => TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 24,
    height: 1.1,
    letterSpacing: 0,
  );

  TextStyle get headline2Medium => TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 30,
    height: 1.1,
    letterSpacing: 0,
  );

  TextStyle get bodyRegular => TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 14,
        height: 1.1,
        letterSpacing: 0,
      );

  TextStyle get bodyBold => TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 14,
    height: 1.1,
    letterSpacing: 0,
  );

  TextStyle get footnoteDescription => TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 12,
        height: 1.1,
        letterSpacing: 0,
      );
}
