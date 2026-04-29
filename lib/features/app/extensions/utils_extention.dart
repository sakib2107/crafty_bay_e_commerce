
import 'package:flutter/material.dart';
import '../../../l10n/app_localizations.dart';

extension UtilsExtension on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this)!;

  TextTheme get textTheme => TextTheme.of(this);
}