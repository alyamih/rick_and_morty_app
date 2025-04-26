import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty_app/app/navigation/routes.dart';
import 'package:rick_and_morty_app/app/theme/data/repository/theme_repository.dart';
import 'package:rick_and_morty_app/features/favorites/data/repositories/favorite_repository.dart';
import 'package:rick_and_morty_app/features/favorites/domain/bloc/favorites_bloc.dart';
import 'package:rick_and_morty_app/app/theme/app_colors.dart';
import 'package:rick_and_morty_app/app/theme/app_theme.dart';
import 'package:rick_and_morty_app/app/theme/domain/bloc/theme_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create:
              (context) =>
                  FavoritesBloc(FavoriteRepository())
                    ..add(const FavoritesEvent.getData()),
        ),
        BlocProvider(
          create:
              (context) => ThemeBloc(ThemeRepository())..add(SetInitialTheme()),
        ),
      ],
      child: BlocBuilder<ThemeBloc, bool>(
        builder: (context, state) {
          return MaterialApp.router(
            title: '',
            routerConfig: router,
            debugShowCheckedModeBanner: false,
            darkTheme: AppTheme(AppColors.darkColors).getTheme(),
            theme: AppTheme(AppColors.mainColors).getTheme(),
            themeMode: state ? ThemeMode.dark : ThemeMode.light,
          );
        },
      ),
    );
  }
}
