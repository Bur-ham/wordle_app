import 'package:equatable/equatable.dart';
import 'package:wordle_app/wordle/wordle.dart';

class Word extends Equatable {
    final List<Letter> letters;

    const Word({required this.letters});

    factory Word.fromString(String word) => 
        Word(letters: word.split('').map((e) => Letter(val: e)).toList());

    String get wordString => letters.map((e) => e.val).join();

    void addLetter(String val) {
        final currentIndex = letters.indexWhere((element) => element.val.isEmpty);
        if (currentIndex != -1) {
            letters[currentIndex] = Letter(val: val);
        }
    }

    void removeLetter() {
        final recentLetterIndex = letters.lastIndexWhere((element) => element.val.isNotEmpty);
        if (recentLetterIndex != -1) {
            letters[recentLetterIndex] = Letter.empty();
        }
    }

    @override
    List<Object?> get props => [letters];
}