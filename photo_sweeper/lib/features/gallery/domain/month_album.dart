import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:photo_manager/photo_manager.dart';

part 'month_album.freezed.dart';

@freezed
class MonthAlbum with _$MonthAlbum {
  const factory MonthAlbum({
    required DateTime date, // ex: 2025-08-01, on utilise que le mois/année
    required int assetCount,
    required List<AssetEntity> assets,
  }) = _MonthAlbum;
}