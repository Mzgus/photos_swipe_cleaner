import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:photo_sweeper/features/gallery/presentation/gallery_provider.dart';
import 'package:photo_sweeper/features/gallery/presentation/widgets/month_card.dart';

class GalleryScreen extends ConsumerWidget {
  const GalleryScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final galleryState = ref.watch(galleryProvider);
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.galleryPageTitle),
      ),
      body: galleryState.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => const Center(
          // Cet état ne devrait pas être atteint grâce à la redirection du routeur
          child: Text('Une erreur est survenue lors du chargement des photos.'),
        ),
        data: (monthAlbums) {
          if (monthAlbums.isEmpty) {
            return const Center(
              child: Text('Aucune photo trouvée dans votre photothèque.'),
            );
          }
          
          return ListView.builder(
            itemCount: monthAlbums.length,
            itemBuilder: (context, index) {
              return MonthCard(album: monthAlbums[index]);
            },
          );
        },
      ),
    );
  }
}