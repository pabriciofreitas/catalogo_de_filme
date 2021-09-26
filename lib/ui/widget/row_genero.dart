import 'package:flutter/material.dart';

class RowGenero extends StatelessWidget {
  String text;
  Function onPressed;
  RowGenero({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text,
            style: Theme.of(context).textTheme.headline4?.copyWith(
                  color: Theme.of(context).colorScheme.onPrimary,
                )),
        TextButton(
          onPressed: onPressed(),
          child: Text(
            "Ver mais",
            style: Theme.of(context).textTheme.button?.copyWith(
                  color: Theme.of(context).colorScheme.secondary,
                ),
          ),
        ),
      ],
    );
  }
}
