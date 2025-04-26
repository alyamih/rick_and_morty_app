import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty_app/app/http/api_service.dart';
import 'package:rick_and_morty_app/features/characters/data/data_sources/characters_local_data_source.dart';
import 'package:rick_and_morty_app/features/characters/data/data_sources/characters_remote_data_source.dart';
import 'package:rick_and_morty_app/features/characters/data/repositories/characters_repository.dart';
import 'package:rick_and_morty_app/features/characters/domain/bloc/character_bloc.dart';
import 'package:rick_and_morty_app/features/characters/presentation/widgets/character_card.dart';
import 'package:rick_and_morty_app/app/theme/domain/bloc/theme_bloc.dart';

class CharactersPage extends StatelessWidget {
  const CharactersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (context) => CharacterBloc(
            CharactersRepository(
              localDataSource: CharactersLocalDataSource(),
              remoteDataSource: CharactersRemoteDataSource(DioClient()),
            ),
          ),
      child: const _CharactersPage(),
    );
  }
}

class _CharactersPage extends StatefulWidget {
  const _CharactersPage();

  @override
  State<_CharactersPage> createState() => _CharactersPageState();
}

class _CharactersPageState extends State<_CharactersPage> {
  late final ScrollController _scrollController;
  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_onScroll);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CharacterBloc, CharacterState>(
      bloc: context.read<CharacterBloc>()..add(const CharacterEvent.getData()),
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            actionsPadding: EdgeInsets.symmetric(horizontal: 16),
            title: Text('Characters'),
            actions: [
              BlocBuilder<ThemeBloc, bool>(
                builder: (context, state) {
                  return ActionChip(
                    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                    avatar: Icon(state ? Icons.dark_mode : Icons.light_mode),
                    label: Text(
                      state ? 'Dark Mode' : 'Light mode',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    onPressed: () {
                      context.read<ThemeBloc>().add(ChangeTheme());
                    },
                  );
                  // return Row(
                  //   children: [
                  //     Text(
                  //       'App theme',
                  //       style: TextTheme.of(context).bodyMedium,
                  //     ),
                  //     SizedBox(width: 8),
                  //     CupertinoSwitch(
                  //       inactiveTrackColor: Theme.of(context).highlightColor,
                  //       value: state,
                  //       onChanged: (bool val) {
                  //         context.read<ThemeBloc>().add(ChangeTheme());
                  //       },
                  //     ),
                  //   ],
                  // );
                },
              ),
            ],
          ),

          body: state.when(
            empty: () {
              return Center(
                child: Text(
                  'No characters available',
                  style: TextTheme.of(context).bodyMedium,
                ),
              );
            },
            error: (error, stackTrace) {
              return Text(error.toString());
            },
            loaded: (characters, _, _) {
              return ListView.separated(
                padding: EdgeInsets.fromLTRB(16, 20, 16, 20),
                controller: _scrollController,
                itemCount: characters.length,
                separatorBuilder: (context, index) {
                  return const SizedBox(height: 8);
                },
                itemBuilder: (context, index) {
                  return CharacterCard(character: characters[index]);
                },
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

  void _onScroll() {
    if (_isBottom) {
      final state = context.read<CharacterBloc>().state.mapOrNull(
        loaded: (value) => (value.characters, value.pageNumber),
      );

      context.read<CharacterBloc>().add(
        CharacterEvent.getMore(characters: state!.$1, pageNumber: state.$2 + 1),
      );
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }
}
