import 'package:flutter/material.dart';

class FilmeDestaque extends StatelessWidget {
  const FilmeDestaque({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(
        "Lançamento",
        style: Theme.of(context).textTheme.headline4?.copyWith(
              color: Theme.of(context).colorScheme.onPrimary,
            ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(vertical: size.height * 0.02),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            image: DecorationImage(
                image: AssetImage(
              "lib/assets/images/image.jpg",
            )),
          ),
          height: size.height * 0.6,
          width: size.width * 0.7,
        ),
      ),
      Text(
        "Tema do filme",
        style: Theme.of(context)
            .textTheme
            .bodyText1
            ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
      ),
      Padding(
        padding: EdgeInsets.only(
            top: size.height * 0.02, bottom: size.height * 0.01),
        child: Text(
          "Ator 1 - Ator 2 - Ator 3",
          style: Theme.of(context)
              .textTheme
              .bodyText2
              ?.copyWith(color: Theme.of(context).colorScheme.onBackground),
        ),
      ),
    ]);
  }
}
