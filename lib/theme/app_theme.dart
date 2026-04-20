// lib/theme/app_theme.dart
//
// GitHub Pusher — единая дизайн-система.
// Все цвета, радиусы, отступы, типографика приложения берутся ТОЛЬКО отсюда.
// Источник истины: HTML-прототип github_pusher_v2_10_8_9_9.html.
//
// Использование:
//   Container(color: AppColors.cont, ...)
//   Text('...', style: AppTypography.h1)
//   borderRadius: BorderRadius.circular(AppRadius.card)

import 'package:flutter/material.dart';

// ─────────────────────────────────────────────────────────────────────────────
// COLORS
// ─────────────────────────────────────────────────────────────────────────────
class AppColors {
  AppColors._();

  // Brand
  static const accent  = Color(0xFF8774E1);
  static const accent2 = Color(0xFF6F5BD0); // pressed

  // Dark theme (default)
  static const bg      = Color(0xFF000000);
  static const cont    = Color(0xFF1C1C1E);
  static const cont2   = Color(0xFF2C2C2E);
  static const text    = Color(0xFFFFFFFF);
  static const sub     = Color(0xFF8E8E93);
  static const sep     = Color(0x2E96969A); // rgba(150,150,160,.18)
  static const border  = Color(0x2E96969A);

  // Semantic
  static const red    = Color(0xFFFF3B30);
  static const orange = Color(0xFFFF9500);
  static const green  = Color(0xFF34C759);
  static const blue   = Color(0xFF007AFF);
  static const teal   = Color(0xFF30D5C8);
  static const purple = Color(0xFFAF52DE);
  static const pink   = Color(0xFFFF2D55);

  // Gradients
  static const avatarGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [accent, pink],
  );

  static const aiDotGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFFA78BFA), Color(0xFFEC4899)],
  );

  // Nav-pill (полупрозрачный акцент)
  static const navPill   = Color(0x2E8774E1); // rgba(135,116,225,.18)
  static const navBg     = Color(0xC71C1C1E); // 78% opacity
  static const navBorder = Color(0x0FFFFFFF);
}

// ─────────────────────────────────────────────────────────────────────────────
// RADIUS
// ─────────────────────────────────────────────────────────────────────────────
class AppRadius {
  AppRadius._();
  static const double card  = 16; // обычные карточки
  static const double tile  = 22; // большие плитки на дашборде
  static const double icon  = 12; // цветные плашки иконок 44×44
  static const double btn   = 16; // primary кнопки
  static const double field = 12; // TextField
  static const double chip  = 999; // pill
  static const double navPill = 20;
  static const double navBar  = 28;
}

// ─────────────────────────────────────────────────────────────────────────────
// SPACING
// ─────────────────────────────────────────────────────────────────────────────
class AppSpacing {
  AppSpacing._();
  static const double pageH      = 18; // горизонтальный padding страницы
  static const double sectionGap = 28; // между секциями
  static const double listGap    = 10; // между карточками в списке
  static const double cardPad    = 16; // padding внутри карточки
  static const double navBottom  = 88; // запас снизу под навбар
}

// ─────────────────────────────────────────────────────────────────────────────
// TYPOGRAPHY
// ─────────────────────────────────────────────────────────────────────────────
class AppTypography {
  AppTypography._();

  static const String fontFamily = 'Inter'; // fallback на system

  static const TextStyle h1 = TextStyle(
    fontFamily: fontFamily,
    fontSize: 28,
    fontWeight: FontWeight.w700,
    color: AppColors.text,
    letterSpacing: -0.5,
    height: 1.15,
  );

  static const TextStyle h2 = TextStyle(
    fontFamily: fontFamily,
    fontSize: 22,
    fontWeight: FontWeight.w700,
    color: AppColors.text,
  );

  static const TextStyle title = TextStyle(
    fontFamily: fontFamily,
    fontSize: 17,
    fontWeight: FontWeight.w600,
    color: AppColors.text,
  );

  static const TextStyle cardTitle = TextStyle(
    fontFamily: fontFamily,
    fontSize: 15,
    fontWeight: FontWeight.w600,
    color: AppColors.text,
  );

  static const TextStyle body = TextStyle(
    fontFamily: fontFamily,
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: AppColors.text,
  );

  static const TextStyle sub = TextStyle(
    fontFamily: fontFamily,
    fontSize: 13,
    fontWeight: FontWeight.w400,
    color: AppColors.sub,
    height: 1.35,
  );

  static const TextStyle secTitle = TextStyle(
    fontFamily: fontFamily,
    fontSize: 12,
    fontWeight: FontWeight.w600,
    color: AppColors.sub,
    letterSpacing: 0.5,
  );

  static const TextStyle chip = TextStyle(
    fontFamily: fontFamily,
    fontSize: 13,
    fontWeight: FontWeight.w500,
    color: AppColors.text,
  );

  static const TextStyle badge = TextStyle(
    fontFamily: fontFamily,
    fontSize: 11,
    fontWeight: FontWeight.w700,
    color: AppColors.text,
  );

  static const TextStyle button = TextStyle(
    fontFamily: fontFamily,
    fontSize: 15,
    fontWeight: FontWeight.w600,
    color: AppColors.text,
  );
}

// ─────────────────────────────────────────────────────────────────────────────
// DECORATIONS (часто используемые)
// ─────────────────────────────────────────────────────────────────────────────
class AppDecorations {
  AppDecorations._();

  /// Обычная карточка #1C1C1E radius 16
  static BoxDecoration card = BoxDecoration(
    color: AppColors.cont,
    borderRadius: BorderRadius.circular(AppRadius.card),
  );

  /// Большая плитка radius 22
  static BoxDecoration tile = BoxDecoration(
    color: AppColors.cont,
    borderRadius: BorderRadius.circular(AppRadius.tile),
  );

  /// Цветная плашка иконки 44×44 (передай color)
  static BoxDecoration iconPlate(Color color) => BoxDecoration(
    color: color,
    borderRadius: BorderRadius.circular(AppRadius.icon),
  );

  /// Чип (передай isActive)
  static BoxDecoration chip({required bool active}) => BoxDecoration(
    color: active ? AppColors.accent : AppColors.cont2,
    borderRadius: BorderRadius.circular(AppRadius.chip),
  );

  /// TextField
  static BoxDecoration field({bool focused = false}) => BoxDecoration(
    color: AppColors.cont,
    borderRadius: BorderRadius.circular(AppRadius.field),
    border: Border.all(
      color: focused ? AppColors.accent : AppColors.border,
      width: 1,
    ),
  );

  /// Island navbar
  static BoxDecoration islandNav = BoxDecoration(
    color: AppColors.navBg,
    borderRadius: BorderRadius.circular(AppRadius.navBar),
    border: Border.all(color: AppColors.navBorder, width: 1),
    boxShadow: const [
      BoxShadow(color: Color(0x73000000), blurRadius: 32, offset: Offset(0, 8)),
      BoxShadow(color: Color(0x40000000), blurRadius: 8,  offset: Offset(0, 2)),
    ],
  );

  /// FAB
  static BoxDecoration fab = const BoxDecoration(
    color: AppColors.accent,
    shape: BoxShape.circle,
    boxShadow: [
      BoxShadow(color: Color(0x668774E1), blurRadius: 12, offset: Offset(0, 4)),
    ],
  );
}

// ─────────────────────────────────────────────────────────────────────────────
// ANIMATIONS
// ─────────────────────────────────────────────────────────────────────────────
class AppAnimations {
  AppAnimations._();
  static const Duration screenTransition = Duration(milliseconds: 320);
  static const Duration navPill          = Duration(milliseconds: 420);
  static const Duration press            = Duration(milliseconds: 220);
  static const Cubic    iosSpring        = Cubic(0.32, 0.72, 0, 1);
}

// ─────────────────────────────────────────────────────────────────────────────
// THEME DATA (передай в MaterialApp)
// ─────────────────────────────────────────────────────────────────────────────
ThemeData buildAppTheme() {
  return ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.bg,
    fontFamily: AppTypography.fontFamily,
    colorScheme: const ColorScheme.dark(
      primary:    AppColors.accent,
      secondary:  AppColors.accent2,
      surface:    AppColors.cont,
      background: AppColors.bg,
      error:      AppColors.red,
    ),
    textTheme: const TextTheme(
      displayLarge:  AppTypography.h1,
      headlineLarge: AppTypography.h2,
      titleLarge:    AppTypography.title,
      titleMedium:   AppTypography.cardTitle,
      bodyLarge:     AppTypography.body,
      bodyMedium:    AppTypography.sub,
      labelLarge:    AppTypography.button,
      labelSmall:    AppTypography.badge,
    ),
    splashFactory: NoSplash.splashFactory,
    highlightColor: Colors.transparent,
  );
}
