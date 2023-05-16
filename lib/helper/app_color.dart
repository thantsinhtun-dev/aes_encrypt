import 'package:flutter/material.dart';

const colorPrimaryLight = Color(0xFF522B7A);
const colorPrimaryDark = Color(0xFF522B7A);

const colorPrimaryTextLight = Color(0xFF444444);
const colorPrimaryTextDark = Color(0xFFE9E9E9);

const colorPrimaryBackgroundLight = Color(0xFFF5F5F5);
const colorPrimaryBackgroundDark = Color(0xFFF5F5F5);

const colorHintLight = Color(0x80444444);
const colorHintDark = Color(0x80E9E9E9);

const colorAccentLight = Color(0xFF1EC5A2);
const colorAccentDark = Color(0xFF1EC5A2);

const colorSliderLight = Color(0x665B5B5B);
const colorSliderDark = Color(0x66DCDCDC);

const colorLinkLight = Color(0xFF1EC5A2);
const colorLinkDark = Color(0xFF1EC5A2);

const colorGray = Color(0xFF9E9E9E);

const colorButtonLight = Colors.white;
const colorButtonDark = Color(0xff3a3a3f);

const colorButtonDisableLight = Color(0xffd0d0d0);
const colorButtonDisableDark = Color(0xff6c6c6c);

const colorEmptyListLight = Color(0x665B5B5B);
const colorEmptyListDark = Color(0x66DCDCDC);

const colorDividerLight = Color(0x1A000000);
const colorDividerDark = Color(0x1AFFFFFF);

const colorNotTakenLight = Color(0xFFF84646);
const colorNotTakenDark = Color(0xFFF84646);

const colorNoResponseLight = Color(0xFF928F8F);
const colorNoResponseDark = Color(0xFF928F8F);

const colorWhite = Color(0xFFFFFFFF);


class AppColors {
  Color colorPrimary;
  Color colorPrimaryText;
  Color colorHint;
  Color colorAccent;
  Color colorSlider;
  Color colorLink;
  Color colorButton;
  Color colorButtonDisable;
  Color colorButtonDisableText;
  Color colorEmptyList;
  Color colorDivider;
  Color colorNotTaken;
  Color colorNoResponse;
  Color colorGray;
  Color colorPrimaryBackground;
  Color colorWhite;

  AppColors(
      this.colorPrimary,
      this.colorPrimaryText,
      this.colorHint,
      this.colorAccent,
      this.colorSlider,
      this.colorLink,
      this.colorButton,
      this.colorButtonDisable,
      this.colorButtonDisableText,
      this.colorEmptyList,
      this.colorDivider,
      this.colorNotTaken,
      this.colorNoResponse,
      this.colorGray,
      this.colorPrimaryBackground,
      this.colorWhite);
}

final _appColorLight = AppColors(
  colorPrimaryLight,
  colorPrimaryTextLight,
  colorHintLight,
  colorAccentLight,
  colorSliderLight,
  colorLinkLight,
  colorButtonLight,
  colorButtonDisableLight,
  colorPrimaryTextDark,
  colorEmptyListLight,
  colorDividerLight,
  colorNotTakenLight,
  colorNoResponseLight,
  colorGray,
  colorPrimaryBackgroundLight,
  colorWhite
);

final _appColorDark = AppColors(
    colorPrimaryDark,
    colorPrimaryTextDark,
    colorHintDark,
    colorAccentDark,
    colorSliderDark,
    colorLinkDark,
    colorButtonDark,
    colorButtonDisableDark,
    colorPrimaryTextLight,
    colorEmptyListDark,
    colorDividerDark,
    colorNotTakenDark,
    colorNoResponseDark,
    colorGray,
    colorPrimaryBackgroundDark,
  colorWhite
);

extension AppTheme on ThemeData {
  AppColors get appColors => brightness == Brightness.light ? _appColorLight : _appColorDark;
}

extension ContextThemeExtension on BuildContext {
  bool get isLightTheme => Theme.of(this).brightness == Brightness.light;

  AppColors get appColors => Theme.of(this).appColors;
}
