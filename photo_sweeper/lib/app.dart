import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:photo_sweeper/core/presentation/theme/app_theme.dart';
import 'package:photo_sweeper/core/routing/app_router.dart';
import 'package:photo_sweeper/l10n/app_localizations.dart';

class PhotoSweeperApp extends ConsumerWidget {
  const PhotoSweeperApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(appRouterProvider);
    final theme = AppTheme.light();

    return MaterialApp.router(
      title: 'Photo Sweeper',
      routerConfig: router,
      theme: theme,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('fr'), // Français par défaut
        // Locale('en'), // Prêt pour l'anglais
      ],
    );
  }
}