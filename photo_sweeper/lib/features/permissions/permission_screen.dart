import 'package:flutter/material.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:photo_sweeper/l10n/app_localizations.dart';

class PermissionScreen extends StatelessWidget {
  const PermissionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            textDirection: TextDirection.ltr,
            children: [
              Icon(
                Icons.photo_library_outlined,
                size: 80,
                color: theme.colorScheme.primary,
              ),
              const SizedBox(height: 24),
              Text(
                l10n.permissionRequiredTitle,
                style: theme.textTheme.headlineSmall,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              Text(
                l10n.permissionRequiredMessage,
                style: theme.textTheme.bodyLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 32),
              FilledButton.icon(
                icon: const Icon(Icons.settings),
                label: Text(l10n.openSettings),
                onPressed: () => PhotoManager.openSetting(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}