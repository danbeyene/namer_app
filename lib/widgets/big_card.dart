import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:namer_app/utils/dimentions.dart';
import 'package:namer_app/widgets/big_text.dart';

class BigCard extends StatelessWidget {
  final String wordPair;
  const BigCard({Key? key,required this.wordPair}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData appTheme= Theme.of(context);
    TextStyle style = appTheme.textTheme.displayMedium!.copyWith(color: appTheme.colorScheme.onPrimary);
    return Card(
      color: appTheme.colorScheme.primary,
      child: Padding(padding: EdgeInsets.all(Dimensions.size20),
      child: BigText(text: wordPair, textStyle: style,)),
    );
  }
}
