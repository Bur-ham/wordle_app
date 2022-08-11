import 'package:flutter/material.dart';
import 'package:wordle_app/wordle/wordle.dart';


class BoardTile extends StatelessWidget {
    const BoardTile({
        Key? key,
        required this.letter,
    }) : super(key: key);

    final Letter letter;

    @override
    Widget build(BuildContext context) {
        return Container(
            margin: const EdgeInsets.all(4),
            height: 48,
            width: 48,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: letter.backgroundColor,
                border: Border.all(color: letter.borderColor),
                borderRadius: BorderRadius.circular(4)
            ),
            child: Text(
                letter.val,
                style: const TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold
                ),
            )
        );
    }
}