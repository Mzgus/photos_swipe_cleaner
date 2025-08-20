import 'dart:async';
import 'package:collection/collection.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:photo_sweeper/features/gallery/domain/month_album.dart';
import 'package:photo_sweeper/features/permissions/permission_provider.dart';

final galleryProvider = AsyncNotifierProvider<GalleryNotifier, List<MonthAlbum>>(
  GalleryNotifier.new,
);

class GalleryNotifier extends AsyncNotifier<List<MonthAlbum>> {
  @override
  FutureOr<List<MonthAlbum>> build() async {
    // On s'assure que la permission est valide avant de continuer
    final permission = await ref.watch(permissionProvider.future);
    if (!permission.hasAccess) {
      // Normalement, le routeur nous aurait déjà redirigé.
      // C'est une sécurité supplémentaire.
      throw Exception('Accès à la photothèque non autorisé.');
    }

    final List<AssetPathEntity> albums = await PhotoManager.getAssetPathList(
      type: RequestType.image,
    );

    if (albums.isEmpty) return [];

    final AssetPathEntity mainAlbum = albums.first;
    final List<AssetEntity> allAssets = await mainAlbum.getAssetListRange(
      start: 0,
      end: await mainAlbum.assetCountAsync,
    );

    if (allAssets.isEmpty) return [];

    final Map<DateTime, List<AssetEntity>> groupedAssets = groupBy(
      allAssets,
      (asset) => DateTime(asset.createDateTime.year, asset.createDateTime.month),
    );

    final List<MonthAlbum> monthAlbums = groupedAssets.entries.map((entry) {
      return MonthAlbum(
        date: entry.key,
        assetCount: entry.value.length,
        assets: entry.value,
      );
    }).toList();

    monthAlbums.sort((a, b) => b.date.compareTo(a.date));
    
    return monthAlbums;
  }
}