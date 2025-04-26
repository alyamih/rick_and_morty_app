import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty_app/features/characters/presentation/widgets/character_card.dart';
import 'package:rick_and_morty_app/features/favorites/domain/bloc/favorites_bloc.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoritesBloc, FavoritesState>(
      builder: (context, state) {
        bool isAscendingByAlphabet() =>
            state.whenOrNull(
              loaded:
                  (characters, isAscendingByAlphabet) => isAscendingByAlphabet,
            ) ??
            false;
        return Scaffold(
          appBar: AppBar(
            title: Text('Favorites'),
            actionsPadding: EdgeInsets.symmetric(horizontal: 16),
            actions: [
              ActionChip(
                backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                avatar: Icon(
                  isAscendingByAlphabet()
                      ? Icons.arrow_downward
                      : Icons.arrow_upward,
                ),
                label: Text(
                  'Sort by name',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                onPressed: () {
                  context.read<FavoritesBloc>().add(
                    FavoritesEvent.sortData(!isAscendingByAlphabet()),
                  );
                },
              ),
            ],
          ),
          body: state.when(
            empty: () {
              return Center(child: const Text('No characters in favorites'));
            },
            error: (error, stackTrace) {
              return Text(error.toString());
            },
            loaded: (characters, _) {
              return AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                child: ListView.separated(
                  padding: EdgeInsets.fromLTRB(16, 20, 16, 20),
                  key: ValueKey(state.hashCode),
                  itemCount: characters.length,
                  separatorBuilder:
                      (context, index) => const SizedBox(height: 8),
                  itemBuilder: (context, index) {
                    return CharacterCard(character: characters[index]);
                  },
                ),
              );
            },
            loading: () {
              return const Center(child: CircularProgressIndicator());
            },
          ),
        );
      },
    );
  }
}
