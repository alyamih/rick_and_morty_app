import 'package:go_router/go_router.dart';
import 'package:rick_and_morty_app/app/navigation/bottom_bar_base.dart';
import 'package:rick_and_morty_app/features/characters/presentation/characters_page.dart';
import 'package:rick_and_morty_app/features/favorites/presentation/favorites_page.dart';

final router = GoRouter(
  routes: [
    StatefulShellRoute.indexedStack(
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/',
              builder: (context, state) => const CharactersPage(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/favorites',
              builder: (context, state) {
                return const FavoritesPage();
              },
            ),
          ],
        ),
      ],
      builder: (context, state, navigationShell) {
        return BottomBarBase(navigationShell: navigationShell);
      },
    ),
  ],
);
