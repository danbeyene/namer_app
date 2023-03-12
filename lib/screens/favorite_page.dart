import 'package:english_words/english_words.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:namer_app/utils/dimentions.dart';
import 'package:provider/provider.dart';

import '../provider/app_data_provider.dart';
import '../widgets/small_text.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var appProvider = context.watch<AppDataProvider>();
    List<WordPair> favorites = appProvider.favorites;
    if(favorites.isEmpty){
      return const Center(
          child: SmallText(
            text: 'No favorites yet.',
          ));
    }
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Text('You have '
              '${favorites.length} favorites:'),
        ),
        for(WordPair i in favorites)
          ListTile(
            leading: Icon(Icons.favorite),
            title: SmallText(text: i.asLowerCase,),
          )
      ],
    );
  }
}
