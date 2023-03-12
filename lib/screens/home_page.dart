import 'package:english_words/english_words.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:namer_app/provider/app_data_provider.dart';
import 'package:namer_app/utils/dimentions.dart';
import 'package:namer_app/widgets/big_card.dart';
import 'package:namer_app/widgets/small_text.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData appTheme = Theme.of(context);
    var appProvider=context.watch<AppDataProvider>();

    Color textOrIconColor = appTheme.colorScheme.primary;
    WordPair namePair = appProvider.namePair;
    // List<WordPair> favorites = appProvider.favorites;
    Set<WordPair> favorites = appProvider.favorites;
    IconData iconData;
    if (favorites.contains(namePair)) {
      iconData = Icons.favorite;
    } else {
      iconData = Icons.favorite_border;
    }
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        BigCard(wordPair: namePair.asLowerCase),
        SizedBox(
          height: Dimensions.height20 / 2,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton.icon(
                onPressed: () {
                  appProvider.toggleFavorites();
                },
                icon: Icon(
                  iconData,
                  color: textOrIconColor,
                ),
                label: SmallText(
                  text: 'Like',
                  textColor: textOrIconColor,
                )),
            SizedBox(
              width: Dimensions.width20 / 2,
            ),
            ElevatedButton(
                onPressed: () {
                  appProvider.nextNamePair();
                },
                child: SmallText(
                  text: 'Next',
                  textColor: textOrIconColor,
                ))
          ],
        )
      ],
    );
  }
}
