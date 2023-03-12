import 'package:english_words/english_words.dart';
import 'package:flutter/cupertino.dart';

class AppDataProvider extends ChangeNotifier{
  WordPair namePair= WordPair.random();
  //List<WordPair> favorites=[];
  Set<WordPair> favorites={};
  void nextNamePair(){
    namePair= WordPair.random();
    notifyListeners();
  }
  void toggleFavorites(){
    if(favorites.contains(namePair)){
      favorites.remove(namePair);
    }else{
      favorites.add(namePair);
    }
    notifyListeners();
  }
  void removeFavorites(){
    favorites.remove(namePair);
    notifyListeners();
  }
}