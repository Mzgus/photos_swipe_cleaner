// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get galleryPageTitle => 'Photothèque';

  @override
  String get trashPageTitle => 'Corbeille';

  @override
  String get permissionRequiredTitle => 'Accès aux photos requis';

  @override
  String get permissionRequiredMessage =>
      'Pour nettoyer votre photothèque, nous avons besoin de votre permission. Vos photos restent sur votre appareil.';

  @override
  String get openSettings => 'Ouvrir les Réglages';
}
