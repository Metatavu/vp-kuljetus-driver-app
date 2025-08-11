import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

ThemeData getTheme(final BuildContext context) {
  final baseTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color(0xFF00414F),
      primary: const Color(0xFF18404D),
      secondary: const Color(0xFF547476),
      error: const Color(0xFFEE3912),
    ),
    useMaterial3: true,
  );

  final themeWithFonts = baseTheme.copyWith(
    textTheme: GoogleFonts.latoTextTheme(baseTheme.textTheme),
  );

  return themeWithFonts.copyWith(
    appBarTheme: AppBarTheme(
      backgroundColor: baseTheme.primaryColor,
      foregroundColor: Colors.white,
    ),
    dialogTheme: DialogThemeData(
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.transparent,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ),
    cardTheme: CardThemeData(
      color: Colors.white,
      surfaceTintColor: Colors.transparent,
      elevation: 4,
      shadowColor: Colors.black54,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        padding: const WidgetStatePropertyAll(
          EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        ),
        elevation: WidgetStateProperty.resolveWith(
          (final states) => states.contains(WidgetState.disabled) ? 0 : 3,
        ),
        shape: const WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
        ),
        side: WidgetStateProperty.resolveWith(
          (final states) => BorderSide(
            color: states.contains(WidgetState.disabled)
                ? themeWithFonts.disabledColor
                : themeWithFonts.primaryColor,
            width: 1.5,
          ),
        ),
        backgroundColor: const WidgetStatePropertyAll(Colors.white),
        surfaceTintColor: const WidgetStatePropertyAll(Colors.transparent),
        textStyle: WidgetStatePropertyAll(
          themeWithFonts.textTheme.titleMedium,
        ),
      ),
    ),
    filledButtonTheme: FilledButtonThemeData(
      style: ButtonStyle(
        padding: const WidgetStatePropertyAll(
          EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        ),
        shape: const WidgetStatePropertyAll(StadiumBorder()),
        surfaceTintColor: const WidgetStatePropertyAll(Colors.white),
        textStyle: WidgetStatePropertyAll(
          themeWithFonts.textTheme.titleMedium,
        ),
      ),
    ),
    textButtonTheme: const TextButtonThemeData(
      style: ButtonStyle(
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
        ),
      ),
    ),
  );
}
