import 'package:bloc/bloc.dart';
import 'package:rick_and_morty_app/app/theme/data/repository/theme_repository.dart';

part 'theme_event.dart';

class ThemeBloc extends Bloc<ThemeEvent, bool> {
  ThemeBloc(this.themeRepository) : super(false) {
    on<SetInitialTheme>((event, emit) async {
      bool hasThemeDark = await themeRepository.isDark();

      emit(hasThemeDark);
    });

    on<ChangeTheme>((event, emit) async {
      bool hasThemeDark = await themeRepository.isDark();

      emit(!hasThemeDark);
      themeRepository.setTheme(!hasThemeDark);
    });
  }
  ThemeRepository themeRepository;
}
