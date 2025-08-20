import 'package:flutter/material.dart';
import 'package:photo_sweeper/l10n/app_localizations.dart';

class TrashScreen extends StatelessWidget {
  const TrashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.trashPageTitle),
      ),
      body: const Center(
        child: Text('Corbeille (à venir)'),
      ),
    );
  }
}