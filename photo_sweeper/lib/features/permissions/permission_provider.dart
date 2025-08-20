import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:photo_manager/photo_manager.dart';

final permissionProvider = FutureProvider<PermissionState>((ref) async {
  return await PhotoManager.requestPermissionExtend();
});