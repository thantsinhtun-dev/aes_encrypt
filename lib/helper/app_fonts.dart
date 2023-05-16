
import 'package:flutter/material.dart';


class AppFontStyle {
  const AppFontStyle(this.context);

  final BuildContext context;

  TextStyle pure() {
    return TextStyle(

    );
  }

  TextStyle? displayLarge() {
    return Theme.of(context).textTheme.displayLarge?.copyWith(
        );
  }

  TextStyle? displayMedium() {
    return Theme.of(context).textTheme.displayMedium?.copyWith(
        );
  }

  TextStyle? displaySmall() {
    return Theme.of(context).textTheme.displaySmall?.copyWith(
    );
  }

  TextStyle? headlineLarge() {
    return Theme.of(context).textTheme.headlineLarge?.copyWith(
    );
  }

  TextStyle? headlineMedium() {
    return Theme.of(context).textTheme.headlineMedium?.copyWith(
    );
  }

  TextStyle? headlineSmall() {
    return Theme.of(context).textTheme.headlineSmall?.copyWith(
    );
  }

  TextStyle? titleLarge() {
    return Theme.of(context).textTheme.titleLarge?.copyWith(
    );
  }
  TextStyle? titleMedium() {
    return Theme.of(context).textTheme.titleMedium?.copyWith(
      height: 1.5,
    );
  }

  TextStyle? titleSmall() {
    return Theme.of(context).textTheme.titleSmall?.copyWith(
    );
  }

  TextStyle? labelLarge() {
    return Theme.of(context).textTheme.labelLarge?.copyWith(
    );
  }

  TextStyle? labelMedium() {
    return Theme.of(context).textTheme.labelMedium?.copyWith(
    );
  }

  TextStyle? labelSmall() {
    return Theme.of(context).textTheme.labelSmall?.copyWith(
    );
  }

  TextStyle? bodyLarge() {
    return Theme.of(context).textTheme.bodyLarge?.copyWith(
    );
  }

  TextStyle? bodyMedium() {
    return Theme.of(context).textTheme.bodyMedium?.copyWith(
    );
  }

  TextStyle? bodySmall() {
    return Theme.of(context).textTheme.bodySmall?.copyWith(
    );
  }

}

extension ContextLocaleExtension on BuildContext {

  AppFontStyle get appFonts => AppFontStyle(this);
}
