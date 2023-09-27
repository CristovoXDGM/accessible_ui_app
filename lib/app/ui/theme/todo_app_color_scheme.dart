part of './todo_app_theme.dart';

class TodoAppColorScheme {
  ColorScheme lightTheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff006a62),
      onPrimary: Color(0xffffffff),
      secondary: Color(0xff006d38),
      onSecondary: Color(0xffffffff),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      background: Color(0xfffafdfb),
      onBackground: Color(0xff191c1c),
      surface: Color(0xfffafdfb),
      onSurface: Color(0xff191c1c),
    );
  }

  ColorScheme darTheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff52dbcc),
      onPrimary: Color(0xff003732),
      secondary: Color(0xff7fd999),
      onSecondary: Color(0xff00391b),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      background: Color(0xff191c1c),
      onBackground: Color(0xffe0e3e1),
      surface: Color(0xff191c1c),
      onSurface: Color(0xffe0e3e1),
    );
  }
}
