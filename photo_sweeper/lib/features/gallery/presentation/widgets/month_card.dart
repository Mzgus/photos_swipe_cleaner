import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:photo_sweeper/core/presentation/theme/app_colors.dart';
import 'package:photo_sweeper/features/gallery/domain/month_album.dart';

class MonthCard extends StatelessWidget {
  final MonthAlbum album;

  const MonthCard({super.key, required this.album});

  String _formatMonth(BuildContext context, DateTime date) {
    final format = DateFormat.yMMMM(Localizations.localeOf(context).languageCode);
    String formatted = format.format(date);
    return formatted[0].toUpperCase() + formatted.substring(1);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final color = AppColors.getColorForMonth(album.date.month);
    final formattedDate = _formatMonth(context, album.date);

    return Card(
      clipBehavior: Clip.antiAlias,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          border: Border(left: BorderSide(color: color, width: 8)),
        ),
        child: Center(
          child: ListTile(
            title: Text(formattedDate, style: theme.textTheme.titleLarge),
            subtitle: Text('${album.assetCount} photos', style: theme.textTheme.bodyMedium),
            trailing: const Icon(Icons.arrow_forward_ios_rounded),
            onTap: () {
              // TODO: Sprint 2 - Naviguer vers l'écran de Review
              print('Naviguer vers le mois: $formattedDate');
            },
          ),
        ),
      ),
    );
  }
}