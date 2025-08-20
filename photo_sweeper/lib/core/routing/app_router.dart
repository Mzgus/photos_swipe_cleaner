import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:photo_sweeper/features/gallery/presentation/gallery_screen.dart';
import 'package:photo_sweeper/features/permissions/permission_provider.dart';
import 'package:photo_sweeper/features/permissions/permission_screen.dart';
import 'package:photo_sweeper/features/trash/presentation/trash_screen.dart';

final appRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/',
    // On écoute l'état de la permission pour déclencher une redirection si besoin
    refreshListenable: GoRouterRefreshStream(ref.watch(permissionProvider.future).asStream()),
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const GalleryScreen(),
        redirect: (BuildContext context, GoRouterState state) async {
          final permission = await ref.read(permissionProvider.future);
          // Si l'accès n'est pas complet, on redirige vers l'écran de permission
          if (!permission.hasAccess) {
            return '/permission';
          }
          return null; // Pas de redirection si la permission est accordée
        },
      ),
      GoRoute(
        path: '/permission',
        builder: (context, state) => const PermissionScreen(),
      ),
      GoRoute(
        path: '/trash',
        builder: (context, state) => const TrashScreen(),
      ),
    ],
  );
});

// Classe utilitaire pour que go_router écoute les changements d'un Stream
class GoRouterRefreshStream extends ChangeNotifier {
  GoRouterRefreshStream(Stream<dynamic> stream) {
    notifyListeners();
    stream.asBroadcastStream().listen((_) => notifyListeners());
  }
}