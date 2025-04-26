import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty_app/features/characters/data/model/character.dart';
import 'package:rick_and_morty_app/features/favorites/domain/bloc/favorites_bloc.dart';

class CharacterCard extends StatefulWidget {
  const CharacterCard({super.key, required this.character});
  final Character character;

  @override
  State<CharacterCard> createState() => _CharacterCardState();
}

class _CharacterCardState extends State<CharacterCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Theme.of(context).scaffoldBackgroundColor,
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).primaryColor.withValues(alpha: 0.2),
            spreadRadius: 2,
            blurRadius: 7,
            offset: Offset(0, 0.5),
          ),
        ],
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.network(
              widget.character.image,
              height: 100,
              width: 100,
              errorBuilder: (context, error, stackTrace) => Icon(Icons.error),
            ),
          ),
          SizedBox(width: 8),
          Expanded(
            child: Column(
              children: [
                Row(
                  children: [
                    Flexible(
                      child: Text(
                        widget.character.name,
                        style: TextTheme.of(context).bodyMedium,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Flexible(
                      child: Text(
                        widget.character.species,
                        style: TextTheme.of(context).bodySmall,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Flexible(
                      child: Text(
                        widget.character.status,
                        style: TextTheme.of(context).bodySmall,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Flexible(
                      child: Text(
                        widget.character.gender,
                        style: TextTheme.of(context).bodySmall,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          BlocBuilder<FavoritesBloc, FavoritesState>(
            builder: (context, state) {
              bool isFavorite = context.read<FavoritesBloc>().isFavorite(
                widget.character,
              );

              return IconButton(
                icon: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 300),
                  transitionBuilder: (child, animation) {
                    return ScaleTransition(scale: animation, child: child);
                  },
                  child: Icon(
                    isFavorite ? CupertinoIcons.star_fill : CupertinoIcons.star,
                    key: ValueKey<bool>(isFavorite),
                    color: Colors.orange,
                  ),
                ),
                onPressed: () {
                  if (isFavorite) {
                    context.read<FavoritesBloc>().add(
                      FavoritesEvent.removeData(widget.character),
                    );
                  } else {
                    context.read<FavoritesBloc>().add(
                      FavoritesEvent.addData(widget.character),
                    );
                  }
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
